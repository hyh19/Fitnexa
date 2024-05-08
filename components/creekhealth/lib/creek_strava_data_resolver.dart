
enum SportType {
  ORUN,
  IRUN,
  OWALK,
  IWALK,
  HIKING,
  OCYCLE,
  ICYCLE,
  CRICKET,
  FOOTBALL,
  PSWIM,
  OSWIM,
  YOGA,
  PILATES,
  DANCE,
  ZUMBA,
  ROWER,
  ELLIPTICAL,
  CTRAINING,
  TSTRAINING,
  FSTRAINING,
  HIIT,
  COOLDOWN,
  WORKOUT,
  FITNESS,
  TRAIL_RUNNING,
  TREADMILL,
  AEROBICS,
  SIT_UP,
  PLANK,
  JUMPING_JACK,
  CHIN_UP,
  PUSH_UP,
  DEEP_SQUAT,
  HIGH_KNEE_LIFT,
  DUMBBELL,
  BARBELL,
  BOXING,
  KICKBOXING,
  HORIZONTAL_BAR,
  PARALLEL_BARS,
  WALKING_MACHINE,
  SUMMIT_TRAINERS,
  BOWLING,
  TENNIS,
  TABLE_TENNIS,
  GOLF,
  BASKETBALL,
  BADMINTON,
  HOCKEY,
  RUGBY,
  HANDBALL,
  SQUASH,
  BASEBALL,
  SOFTBALL,
  SHUTTLECOCK,
  SEPAKTAKRAW,
  STREET_DANCE,
  MOUNTAIN_CLINBING,
  ROPE_SKIPPING,
  CLIMB_STAIRS,
  BALLET,
  SOCIAL_DANCE,
  DARTS,
  HORSEBACK_RIDING,
  ROLLER_SKATING,
  TAI_CHI,
  FRISBEE,
  HULA_HOOP,
  SLEIGH,
  SKATING,
  BOBSLEIGH_AND_TOBOGGANING,
  CURLING,
  ICE_HOCKEY,
  SURFING,
  SAILBOAT,
  SAILBOARD,
  FOLDBOATING,
  CANOEING,
  BOAT_RACE,
  MOTORBOAT,
  WATER_POLO,
  SLIDING_PLATE,
  ROCK_CLIMBING,
  BUNGEE_JUMPING,
  PARKOUR,
  OTHER,
  SPINNING,
  MARTIAL_ARTS,
  TAEKWONDO,
  KARATE,
  GYMNASTICS,
  PADEL,
  PICKLEBALL,
  SNOWBOARDING,
  SKIING,
  PADDLING,
  BMX,
  FENCING,
  BILLIARDS,
  BEACH_SOCCER,
  BEACH_VOLLEYBALL,
  DODGEBALL,
  JAZZ,
  LATIN,
  SQUARE_DANCE,
  VOLLEYBALL,
  KITE_FLYING,
  FISHING,
  ARCHERY,
  SHOOTING,
  WHITE_WATER_RAFTING,
  ALPINE_SKIING,
  CROSS_COUNTRY_SKIING,
  BIATHON,
  DRAGON_BOAT_RACING,
  RACING;

  String get title {
    switch (this) {
      case SportType.ORUN:
        return 'Outdoor Running';
      case SportType.IRUN:
        return 'Indoor Running';
      case SportType.OWALK:
        return 'Outdoor Walking';
      case SportType.IWALK:
        return 'Indoor Walking';
      case SportType.HIKING:
        return 'Hiking';
      case SportType.OCYCLE:
        return 'Outdoor Cycling';
      case SportType.ICYCLE:
        return 'Indoor Cycling';
      case SportType.CRICKET:
        return 'Cricket';
      case SportType.FOOTBALL:
        return 'Soccer';
      case SportType.PSWIM:
        return 'Pool Swimming';
      case SportType.OSWIM:
        return 'Open Water Swimming';
      case SportType.YOGA:
        return 'Yoga';
      case SportType.PILATES:
        return 'Pilates';
      case SportType.DANCE:
        return 'Dancing';
      case SportType.ZUMBA:
        return 'Zumba';
      case SportType.ROWER:
        return 'Rowing Machine';
      case SportType.ELLIPTICAL:
        return 'Elliptical';
      case SportType.CTRAINING:
        return 'Core Training';
      case SportType.TSTRAINING:
        return 'Traditional strength training';
      case SportType.FSTRAINING:
        return 'Functional Strength Training';
      case SportType.HIIT:
        return 'Hiit';
      case SportType.COOLDOWN:
        return 'Cooldown';
      case SportType.WORKOUT:
        return 'Free training';
      case SportType.FITNESS:
        return 'Fitness';
      case SportType.TRAIL_RUNNING:
        return 'Trail Running';
      case SportType.TREADMILL:
        return 'Stair Stepper';
      case SportType.AEROBICS:
        return 'Aerobic Fitness';
      case SportType.SIT_UP:
        return 'Sit up';
      case SportType.PLANK:
        return 'Plank';
      case SportType.JUMPING_JACK:
        return 'Jumping Jacks';
      case SportType.CHIN_UP:
        return 'Pull up';
      case SportType.PUSH_UP:
        return 'Push up';
      case SportType.DEEP_SQUAT:
        return 'Squat';
      case SportType.HIGH_KNEE_LIFT:
        return 'High Knee Lifts';
      case SportType.DUMBBELL:
        return 'Dumbbell';
      case SportType.BARBELL:
        return 'Barbell';
      case SportType.BOXING:
        return 'Boxing';
      case SportType.KICKBOXING:
        return 'Kickboxing';
      case SportType.HORIZONTAL_BAR:
        return 'Horizontal bar';
      case SportType.PARALLEL_BARS:
        return 'Parallel bar';
      case SportType.WALKING_MACHINE:
        return 'treadmill';
      case SportType.SUMMIT_TRAINERS:
        return 'Climbing Machine';
      case SportType.BOWLING:
        return 'Bowling';
      case SportType.TENNIS:
        return 'Tennis';
      case SportType.TABLE_TENNIS:
        return 'Table Tennis';
      case SportType.GOLF:
        return 'Golf';
      case SportType.BASKETBALL:
        return 'Basketball';
      case SportType.BADMINTON:
        return 'Badminton';
      case SportType.HOCKEY:
        return 'Hockey';
      case SportType.RUGBY:
        return 'Rugby';
      case SportType.HANDBALL:
        return 'Handball';
      case SportType.SQUASH:
        return 'Squash';
      case SportType.BASEBALL:
        return 'Baseball';
      case SportType.SOFTBALL:
        return 'Softball';
      case SportType.SHUTTLECOCK:
        return 'Shuttlecock';
      case SportType.SEPAKTAKRAW:
        return 'Sepaktakraw';
      case SportType.STREET_DANCE:
        return 'Hip hop Dancing';
      case SportType.MOUNTAIN_CLINBING:
        return 'Mountain climbing';
      case SportType.ROPE_SKIPPING:
        return 'Jump Rope';
      case SportType.CLIMB_STAIRS:
        return 'Climbing Stairs';
      case SportType.BALLET:
        return 'Barre';
      case SportType.SOCIAL_DANCE:
        return 'Social Dancing';
      case SportType.DARTS:
        return 'Darts';
      case SportType.HORSEBACK_RIDING:
        return 'Horse riding';
      case SportType.ROLLER_SKATING:
        return 'Roller skating';
      case SportType.TAI_CHI:
        return 'Tai chi';
      case SportType.FRISBEE:
        return 'Frisbee';
      case SportType.HULA_HOOP:
        return 'Hu la hoop';
      case SportType.SLEIGH:
        return 'Sledding';
      case SportType.SKATING:
        return 'Skating';
      case SportType.BOBSLEIGH_AND_TOBOGGANING:
        return 'Bobsleigh';
      case SportType.CURLING:
        return 'Curling';
      case SportType.ICE_HOCKEY:
        return 'Ice hockey';
      case SportType.SURFING:
        return 'Surfing';
      case SportType.SAILBOAT:
        return 'Sailing';
      case SportType.SAILBOARD:
        return 'Sailboard';
      case SportType.FOLDBOATING:
        return 'Kayaking';
      case SportType.CANOEING:
        return 'Canoe';
      case SportType.BOAT_RACE:
        return 'Rowing';
      case SportType.MOTORBOAT:
        return 'Motorboating';
      case SportType.WATER_POLO:
        return 'Water polo';
      case SportType.SLIDING_PLATE:
        return 'Skateboarding';
      case SportType.ROCK_CLIMBING:
        return 'Rock Climbing';
      case SportType.BUNGEE_JUMPING:
        return 'Bungee';
      case SportType.PARKOUR:
        return 'Parkour';
      case SportType.OTHER:
        return 'Other sport';
      case SportType.SPINNING:
        return 'Spinning';
      case SportType.MARTIAL_ARTS:
        return 'Martial arts';
      case SportType.TAEKWONDO:
        return 'Taekwondo';
      case SportType.KARATE:
        return 'Karate';
      case SportType.GYMNASTICS:
        return 'Gymnastics';
      case SportType.PADEL:
        return 'Paddle';
      case SportType.PICKLEBALL:
        return 'Pickle ball';
      case SportType.SNOWBOARDING:
        return 'Snowboarding';
      case SportType.SKIING:
        return 'Skiing';
      case SportType.PADDLING:
        return 'Paddle';
      case SportType.BMX:
        return 'Bicycle motocross';
      case SportType.FENCING:
        return 'Fencing';
      case SportType.BILLIARDS:
        return 'Billiards';
      case SportType.BEACH_SOCCER:
        return 'Beach soccer';
      case SportType.BEACH_VOLLEYBALL:
        return 'Beach volleyball';
      case SportType.DODGEBALL:
        return 'Dodge ball';
      case SportType.JAZZ:
        return 'Jazz';
      case SportType.LATIN:
        return 'Latin';
      case SportType.SQUARE_DANCE:
        return 'Square dance';
      case SportType.VOLLEYBALL:
        return 'Volleyball';
      case SportType.KITE_FLYING:
        return 'Kite flying';
      case SportType.FISHING:
        return 'Fishing';
      case SportType.ARCHERY:
        return 'Archery';
      case SportType.SHOOTING:
        return 'Shooting';
      case SportType.WHITE_WATER_RAFTING:
        return 'White water rafting';
      case SportType.ALPINE_SKIING:
        return 'Alpine skiing';
      case SportType.CROSS_COUNTRY_SKIING:
        return 'Cross country skiing';
      case SportType.BIATHON:
        return 'Biathlon';
      case SportType.DRAGON_BOAT_RACING:
        return 'Dragon boat racing';
      case SportType.RACING:
        return 'Racing';
      default:
        return '';
    }
  }

}
