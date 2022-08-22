import 'package:fita_music_player/components/custom_list_tile.dart';
import 'package:fita_music_player/model/music_model.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final _MainPageState mainPageState = new _MainPageState();

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // NOTE: This music list obtained from iTunes API
  static List<MusicModel> musicList = [
    MusicModel(
        '2 Soon',
        'keshi',
        'The Reaper - EP',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/66/fb/3f/66fb3f85-edec-0fa0-1498-9421eb7105bb/mzaf_4440206883410033715.plus.aac.p.m4a',
        'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/80/8f/c5/808fc582-5d82-b3ba-5189-2ba5fc4bb759/0885014032656.png/100x100bb.jpg'),
    MusicModel(
        'Attention',
        'Charlie Puth',
        'Voicenotes',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2d/bf/9c/2dbf9cea-d89e-cbc9-0449-5918d10fbe0b/mzaf_4326708568621791869.plus.aac.p.m4a',
        'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/a8/e2/1b/a8e21b3b-9c8d-2974-2318-6bcd4c9d2370/075679884336.jpg/100x100bb.jpg'),
    MusicModel(
        'Boy With Luv (Japanese Version)',
        'BTS',
        'BTS, THE BEST',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/4b/39/44/4b394428-ee01-736b-7f34-ea2930a836a5/mzaf_17440070810621076281.plus.aac.p.m4a',
        'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/17/ff/63/17ff63de-3aba-0f2d-63e7-50d66f900ebb/21UMGIM43558.rgb.jpg/100x100bb.jpg'),
    MusicModel(
        'CALL ME BABY',
        'EXO',
        'The 2nd Album ‘EXODUS',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/8d/97/43/8d9743bb-53cb-ed50-a60b-9b2149c4f1e3/mzaf_13524117932247674480.plus.aac.p.m4a',
        'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/5b/b4/90/5bb490f9-4db6-44be-7183-b6e844ec75db/EXO_2_EXODUS_KORver.jpg/100x100bb.jpg'),
    MusicModel(
        'Enjoy Life',
        'Airr',
        'Enjoy Life - Single',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/a3/d0/44/a3d04470-bbc0-ea87-dd10-4bb645cf85c3/mzaf_1398162735192665278.plus.aac.p.m4a',
        'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/3d/f5/16/3df5161a-afce-5044-84c5-757fae78d834/artwork.jpg/100x100bb.jpg'),
    MusicModel(
        'Fire Truck',
        'NCT 127',
        'NCT #127 – The 1st Mini Album',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/93/40/2c/93402cf6-3f0e-30e8-628f-888876c54594/mzaf_15415703267427613770.plus.aac.p.m4a',
        'https://is4-ssl.mzstatic.com/image/thumb/Music60/v4/2b/f7/b0/2bf7b080-2731-5e19-8437-4c4ede4f6442/NCT127_4000x4000.jpg/100x100bb.jpg'),
    MusicModel(
        'Kite',
        'U2',
        'Window In The Skies - Single',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/0c/80/37/0c803764-c7df-2686-80f8-9a2460df8c1c/mzaf_13960762169787486296.plus.aac.p.m4a',
        'https://is5-ssl.mzstatic.com/image/thumb/Music112/v4/e5/9a/ac/e59aac9c-e9ee-e8fa-5c0a-76e4ce21f548/18UMGIM31605.rgb.jpg/100x100bb.jpg'),
    MusicModel(
        'Nothing\'s Gonna Hurt You Baby',
        'Cigarettes After Sex',
        'I. - EP',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/a5/13/74/a5137492-7942-4c7a-16c3-9e3dc119a08f/mzaf_13701725085782636554.plus.aac.p.m4a',
        'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/d0/92/4e/d0924e7f-5a1b-ed80-fe37-ed014599975a/720841228202.jpg/100x100bb.jpg'),
    MusicModel(
        'Side To Side (feat. Nicki Minaj)',
        'Ariana Grande',
        'Dangerous Woman',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/7e/09/f5/7e09f5d5-baac-b6c9-abdf-692827317ee9/mzaf_13398625819871261212.plus.aac.p.m4a',
        'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/fc/38/e6/fc38e60e-02f5-882d-689b-f8f40f842a3e/16UMGIM12432.rgb.jpg/100x100bb.jpg'),
    MusicModel(
        'Wasting Time',
        'Jack Johnson',
        'Tropical Summer Paradise',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/98/2f/77/982f777e-d1a4-5622-8cfd-07b37ed2ba3c/mzaf_3000069142897202322.plus.aac.p.m4a',
        'https://is3-ssl.mzstatic.com/image/thumb/Music122/v4/c1/a2/65/c1a2654e-72d9-f4db-6717-6ace0cfe8866/22UMGIM87282.rgb.jpg/100x100bb.jpg'),
  ];

  // NOTE: Creating the List that Going do Display and Filter
  List<MusicModel> displayList = List.from(musicList);

  // NOTE: This is Search Bar Setting
  bool isSearching = false;
  TextEditingController controller = TextEditingController();

  // NOTE: Setting the Player UI Data
  String currentTitle = '';
  String currentArtist = '';
  String currentCover = '';
  IconData btnIcon = Icons.pause;

  // NOTE: This is Audio Player Setting
  AudioPlayer audioPlayer = new AudioPlayer(
    mode: PlayerMode.MEDIA_PLAYER,
  );
  String currentSong = '';
  bool isPlaying = false;

  // NOTE: Make the Seek Bar Move
  Duration duration = new Duration();
  Duration position = new Duration();

  // NOTE: This Function is For Playing the Music
  void playMusic(String url) async {
    // NOTE: It Will be Run if The App Already Playing Music Before
    if (isPlaying && currentSong != url) {
      audioPlayer.pause();
      int result = await audioPlayer.play(url);

      if (result == 1) {
        setState(() {
          currentSong = url;
        });
      }
    }
    // NOTE: It Will be Run if The App Never Playing Music Before
    else {
      int result = await audioPlayer.play(url);

      if (result == 1) {
        setState(() {
          isPlaying = true;
          currentSong = url;
        });
      }
    }

    // NOTE: Make The Duration same as Music Duration
    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        duration = event;
      });
    });

    // NOTE: Make The Position of Seek Bar same as Duration
    audioPlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });

    // NOTE: This is To End The Music when Duration is Complete
    audioPlayer.onPlayerCompletion.listen((event) {
      setState(() {
        position = Duration(seconds: 0);
        isPlaying = false;
        btnIcon = Icons.play_arrow;
      });
    });
  }

  // NOTE: This Function is To Search Music by Artist
  void updateList(String value) {
    displayList = musicList
        .where((element) =>
            element.artist.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            // NOTE: Title
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                'Music Player',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),

            // NOTE: Search Bar
            Padding(
              padding: EdgeInsets.fromLTRB(4, 8, 4, 4),
              child: TextField(
                controller: controller,
                onChanged: (value) {
                  updateList(value);

                  setState(() {
                    isSearching = true;
                  });
                },
                onSubmitted: (value) {
                  setState(() {
                    isSearching = false;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search for Artist',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.highlight_remove),
                    onPressed: () {
                      setState(() {
                        controller.clear();
                        isSearching = false;
                        displayList = musicList;
                        FocusScope.of(context).unfocus();
                      });
                    },
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 115,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // NOTE: List of Songs
          Expanded(
            child: (displayList.length == 0)
                ? Center(
                    child: Text(
                      'No results found.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: displayList.length,
                    itemBuilder: (context, index) => customListTile(
                        onTap: () {
                          playMusic(displayList[index].url);

                          setState(() {
                            isPlaying = true;
                            isSearching = false;
                            btnIcon = Icons.pause;
                            currentTitle = displayList[index].title;
                            currentArtist = displayList[index].artist;
                            currentCover = displayList[index].coverUrl;
                          });
                        },
                        title: displayList[index].title,
                        artist: displayList[index].artist,
                        album: displayList[index].album,
                        coverUrl: displayList[index].coverUrl,
                        iconPlaying: (currentTitle == displayList[index].title)
                            ? Icons.wifi_tethering
                            : Icons.music_note),
                  ),
          ),

          // NOTE: Player on The Bottom
          (currentSong == '' || isSearching)
              ? SizedBox()
              : Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x55212121),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                        child: Row(
                          children: [
                            // NOTE: Cover
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage(currentCover),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),

                            // NOTE: Details of Song
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // NOTE: Title
                                  Text(
                                    currentTitle,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 5),

                                  // NOTE: Artist
                                  Text(
                                    currentArtist,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),

                            // NOTE: Play or Pause Button
                            Row(
                              children: [
                                Icon(
                                  Icons.skip_previous,
                                  size: 35,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isPlaying) {
                                        audioPlayer.pause();
                                        isPlaying = false;
                                        btnIcon = Icons.play_arrow;
                                      } else {
                                        audioPlayer.resume();
                                        isPlaying = true;
                                        btnIcon = Icons.pause;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    btnIcon,
                                    size: 35,
                                  ),
                                ),
                                Icon(
                                  Icons.skip_next,
                                  size: 35,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // NOTE: Seek Bar
                      Slider.adaptive(
                        value: position.inSeconds.toDouble(),
                        min: 0.0,
                        max: duration.inSeconds.toDouble(),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
