from app import downtime

if __name__ == '__main__':
    downtime.run(host="0.0.0.0", port=8020, ssl_context='adhoc')
