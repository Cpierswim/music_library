class Helper:

    def format_seconds(seconds: int) -> str:
        minutes = seconds // 60
        seconds = seconds % 60
        hours = minutes // 60
        minutes = minutes % 60

        return_string = ""
        if hours > 0:
            return_string = str(hours) + ":"
            if minutes < 10:
                return_string = return_string + '0'
            return_string = return_string + str(minutes) + ":"
            if seconds < 10:
                return_string = return_string + "0"
            return_string = return_string + str(seconds)
        elif hours == 0 and minutes > 0:
            return_string = str(minutes) + ":"
            if seconds < 10:
                return_string = return_string + "0"
            return_string = return_string + str(seconds)
        else:
            return_string = str(seconds) + " seconds"
        return return_string