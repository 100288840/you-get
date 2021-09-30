扶她奶茶

D:\Download>you-get --format=dash-flv720 --debug https://www.bilibili.com/video/BV1ux41157f1
[DEBUG] get_content: https://www.bilibili.com/video/BV1ux41157f1
[DEBUG] get_content: https://www.bilibili.com/video/BV1ux41157f1
[DEBUG] get_content: https://interface.bilibili.com/v2/playurl?appkey=iVGUTjsxvpLeuDCf&cid=27199156&otype=json&qn=80&quality=80&type=&sign=9d0be16c51ae90987db168c6d9f88164
[DEBUG] get_content: https://interface.bilibili.com/v2/playurl?appkey=iVGUTjsxvpLeuDCf&cid=27199156&otype=json&qn=64&quality=64&type=&sign=c75d15a420dc7fa51edcd640d93d2de8
[DEBUG] get_content: https://interface.bilibili.com/v2/playurl?appkey=iVGUTjsxvpLeuDCf&cid=27199156&otype=json&qn=32&quality=32&type=&sign=58220462534494053c8733ad0690692f
[DEBUG] get_content: https://api.bilibili.com/x/player/playurl?avid=16678337&cid=27199156&qn=16&type=&otype=json&fnver=0&fnval=16&fourk=1
[DEBUG] get_content: https://interface.bilibili.com/v2/playurl?appkey=iVGUTjsxvpLeuDCf&cid=27199156&otype=json&qn=16&quality=16&type=&sign=191e03807adfda8f7aa9cdbbd76f1d50
[DEBUG] get_content: http://comment.bilibili.com/27199156.xml
site:                Bilibili
title:               hp 39gs-基于BASIC制作的回合制对战游戏
stream:
    - format:        dash-flv720
      container:     mp4
      quality:       高清 720P
    # download-with: you-get --format=dash-flv720 [URL]

Traceback (most recent call last):
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 979, in download_urls
    total_size = urls_size(urls, faker=faker, headers=headers)
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 542, in urls_size
    return sum([url_size(url, faker=faker, headers=headers) for url in urls])
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 542, in <listcomp>
    return sum([url_size(url, faker=faker, headers=headers) for url in urls])
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 533, in url_size
    response = urlopen_with_retry(request.Request(url, headers=headers))
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 408, in urlopen_with_retry
    return request.urlopen(*args, **kwargs)
  File "C:\Program Files\Python39\lib\urllib\request.py", line 214, in urlopen
    return opener.open(url, data, timeout)
  File "C:\Program Files\Python39\lib\urllib\request.py", line 517, in open
    response = self._open(req, data)
  File "C:\Program Files\Python39\lib\urllib\request.py", line 539, in _open
    return self._call_chain(self.handle_open, 'unknown',
  File "C:\Program Files\Python39\lib\urllib\request.py", line 494, in _call_chain
    result = func(*args)
  File "C:\Program Files\Python39\lib\urllib\request.py", line 1417, in unknown_open
    raise URLError('unknown url type: %s' % type)
urllib.error.URLError: <urlopen error unknown url type: ['https>
Downloading hp 39gs-基于BASIC制作的回合制对战游戏.mp4 ...
     %[========================================] 1/2you-get: version 0.4.1545, a tiny downloader that scrapes the web.
you-get: Namespace(version=False, help=False, info=False, url=False, json=False, no_merge=False, no_caption=False, force=False, skip_existing_file_size_check=False, format='dash-flv720', output_filename=None, output_dir='.', player=None, cookies=None, timeout=600, debug=True, input_file=None, password=None, playlist=False, first=None, last=None, size=None, auto_rename=False, insecure=False, http_proxy=None, extractor_proxy=None, no_proxy=False, socks_proxy=None, stream=None, itag=None, URL=['https://www.bilibili.com/video/BV1ux41157f1'])
Traceback (most recent call last):
  File "C:\Program Files\Python39\lib\urllib\request.py", line 1346, in do_open
    h.request(req.get_method(), req.selector, req.data, headers,
  File "C:\Program Files\Python39\lib\http\client.py", line 1279, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "C:\Program Files\Python39\lib\http\client.py", line 1325, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "C:\Program Files\Python39\lib\http\client.py", line 1274, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "C:\Program Files\Python39\lib\http\client.py", line 1034, in _send_output
    self.send(msg)
  File "C:\Program Files\Python39\lib\http\client.py", line 974, in send
    self.connect()
  File "C:\Program Files\Python39\lib\http\client.py", line 1448, in connect
    self.sock = self._context.wrap_socket(self.sock,
  File "C:\Program Files\Python39\lib\ssl.py", line 500, in wrap_socket
    return self.sslsocket_class._create(
  File "C:\Program Files\Python39\lib\ssl.py", line 1040, in _create
    self.do_handshake()
  File "C:\Program Files\Python39\lib\ssl.py", line 1309, in do_handshake
    self._sslobj.do_handshake()
ssl.SSLCertVerificationError: [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1129)

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:\Program Files\Python39\Scripts\you-get-script.py", line 33, in <module>
    sys.exit(load_entry_point('you-get==0.4.1545', 'console_scripts', 'you-get')())
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\__main__.py", line 92, in main
    main(**kwargs)
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 1831, in main
    script_main(any_download, any_download_playlist, **kwargs)
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 1713, in script_main
    download_main(
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 1345, in download_main
    download(url, **kwargs)
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 1822, in any_download
    m.download(url, **kwargs)
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\extractor.py", line 61, in download_by_url
    self.download(**kwargs)
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\extractor.py", line 238, in download
    download_urls(urls, self.title, ext, total_size, headers=headers,
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 1022, in download_urls
    url_save(
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 649, in url_save
    chunk_sizes = [url_size(url, faker=faker, headers=tmp_headers) for url in url]
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 649, in <listcomp>
    chunk_sizes = [url_size(url, faker=faker, headers=tmp_headers) for url in url]
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 533, in url_size
    response = urlopen_with_retry(request.Request(url, headers=headers))
  File "C:\Users\Y430P\AppData\Roaming\Python\Python39\site-packages\you_get\common.py", line 408, in urlopen_with_retry
    return request.urlopen(*args, **kwargs)
  File "C:\Program Files\Python39\lib\urllib\request.py", line 214, in urlopen
    return opener.open(url, data, timeout)
  File "C:\Program Files\Python39\lib\urllib\request.py", line 517, in open
    response = self._open(req, data)
  File "C:\Program Files\Python39\lib\urllib\request.py", line 534, in _open
    result = self._call_chain(self.handle_open, protocol, protocol +
  File "C:\Program Files\Python39\lib\urllib\request.py", line 494, in _call_chain
    result = func(*args)
  File "C:\Program Files\Python39\lib\urllib\request.py", line 1389, in https_open
    return self.do_open(http.client.HTTPSConnection, req,
  File "C:\Program Files\Python39\lib\urllib\request.py", line 1349, in do_open
    raise URLError(err)
urllib.error.URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1129)>
