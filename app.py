from flask import Flask, request
from flask_cors import CORS
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from marshmallow import post_load, fields, ValidationError
from flask_migrate import Migrate
from flask_restful import Api, Resource
from dotenv import load_dotenv
from os import environ
from helper import Helper

load_dotenv()

# Create App instance
app = Flask(__name__)

# Add DB URI from .env
app.config['SQLALCHEMY_DATABASE_URI'] = environ.get('SQLALCHEMY_DATABASE_URI')

# Registering App w/ Services
db = SQLAlchemy(app)
ma = Marshmallow(app)
api = Api(app)
CORS(app)
Migrate(app, db)

# Models
class Songs(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(255), nullable=False)
    artist = db.Column(db.String(150), nullable=False)
    album = db.Column(db.String(150), nullable=False)
    release_date = db.Column(db.Date, nullable=False)
    genre = db.Column(db.String(100), nullable=False)
    likes = db.Column(db.Integer, nullable=True, default=0)
    running_time = db.Column(db.Integer)


    def __repr__(self) -> str:
       return f'ID: {self.id} Title: {self.title} {self.artist} {self.album} {self.release_date} {self.genre} Likes: {self.likes}'
    


# Schemas
class SongsSchema(ma.Schema):
    id = fields.Integer(primary_key=True)
    title = fields.String(required=True)
    artist = fields.String(required=True)
    album = fields.String(required=True)
    release_date = fields.Date(required=True)
    genre = fields.String(required=True)
    likes = fields.Integer(required=False)
    running_time = fields.Integer(required=False)

    class Meta:
        fields = ('id', 'title', 'artist', 'album', 'release_date', 'genre', 'likes', 'running_time')

    @post_load
    def create_song(self, data, **kwargs):
        return Songs(**data)

song_schema = SongsSchema()
songs_schema = SongsSchema(many=True)

# Resources
class SongListResoucre(Resource):
    def get(self):
        all_songs = Songs.query.all()
        running_time = 0
        
        song_list = []
        for song in all_songs :
            release_date_str = song.release_date.strftime("%Y-%m-%d")
            song_dict = {
                'title': song.title,
                'artist': song.artist,
                'album': song.album,
                'release_date': release_date_str,
                'genre': song.genre,
                'likes': song.likes,
                'id': song.id,
                'running_time': song.running_time
            }
            if song.running_time is not None:
                running_time += song.running_time
            song_list.append(song_dict)
        
        custom_response = { 
            'songs': song_list,
            'total_running_time': Helper.format_seconds(running_time)
        }

        return custom_response, 200

    def post(self):
        try:
            temp = request
            json = temp.get_json()
            add_song = song_schema.load(request.get_json())
            db.session.add(add_song)
            db.session.commit()
            return song_schema.dump(add_song), 201
        except ValidationError as error:
            return error.messages, 400
        
class SongResource(Resource):
    def get(self, song_id):
        return song_schema.dump(Songs.query.get_or_404(song_id)), 200

    def put(self, song_id):
        song_from_db = Songs.query.get_or_404(song_id)
        if 'title' in request.json:
            song_from_db.title = request.json['title']
        if 'artist' in request.json:
            song_from_db.artist = request.json['artist']
        if 'album' in request.json:
            song_from_db.album = request.json['album']
        if 'release_date' in request.json:
            song_from_db.release_date = request.json['release_date']
        if 'genre' in request.json:
            song_from_db.genre = request.json['genre']
        if 'likes' in request.json:
            song_from_db.likes = request.json['likes']
        if 'running_time' in request.json:
            song_from_db.running_time = request.json['running_time']
        db.session.commit()
        return song_schema.dump(song_from_db), 200

    def delete(self, song_id):
        song_from_db = Songs.query.get_or_404(song_id)
        db.session.delete(song_from_db)
        db.session.commit()
        return '', 204    
class AddLikeResource(Resource):
    def put(self, song_id):
        song_from_db = Songs.query.get_or_404(song_id)
        song_from_db.likes += 1
        db.session.commit()
        return song_schema.dump(song_from_db), 200
    
class RemoveLikeResource(Resource):
    def put(self, song_id):
        song_from_db = Songs.query.get_or_404(song_id)
        if song_from_db.likes > 0:
            song_from_db.likes -= 1
        db.session.commit()
        return song_schema.dump(song_from_db), 200


# Routes
api.add_resource(SongListResoucre, '/api/songs')
api.add_resource(SongResource, '/api/songs/<int:song_id>')
api.add_resource(AddLikeResource, '/api/add_like/<int:song_id>')
api.add_resource(RemoveLikeResource, '/api/remove_like/<int:song_id>')