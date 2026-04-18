.class public Lcn/codemao/android/stat/CodeMaoStat;
.super Ljava/lang/Object;
.source "CodeMaoStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;,
        Lcn/codemao/android/stat/CodeMaoStat$CountlyFeatureNames;,
        Lcn/codemao/android/stat/CodeMaoStat$SingletonHolder;,
        Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;
    }
.end annotation


# static fields
.field protected static final COUNTLY_SDK_NAME:Ljava/lang/String; = "java-native-android"

.field public static final COUNTLY_SDK_VERSION_STRING:Ljava/lang/String; = "18.04"

.field protected static final DEFAULT_APP_VERSION:Ljava/lang/String; = "1.0"

.field private static EVENT_QUEUE_SIZE_THRESHOLD:I = 0x64

.field public static final TAG:Ljava/lang/String; = "CodeMaoStat"

.field private static final TIMER_DELAY_IN_SECONDS:J = 0x12cL

.field private static final VIEW_EVENT_KEY:Ljava/lang/String; = "[CLY]_view"

.field public static appKey:Ljava/lang/String; = null

.field private static final baseServerURL:Ljava/lang/String; = "https://collection.codemao.cn/report/"

.field protected static certificatePinCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static publicKeyPinCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final timeGenerator:Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;

.field protected static final timedEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/codemao/android/stat/pojo/EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static userData:Lcn/codemao/android/stat/UserData;


# instance fields
.field private activityCount_:I

.field private addMetadataToPushIntents:Z

.field private final appCrawlerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appLaunchDeepLink:Z

.field private autoViewTracker:Z

.field automaticTrackingShouldUseShortName:Z

.field private calledAtLeastOnceOnStart:Z

.field private chanel:Ljava/lang/String;

.field private collectedConsentChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

.field private context_:Landroid/content/Context;

.field private deviceInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceIsAppCrawler:Z

.field private disableUpdateSessionRequests_:Z

.field private enableLogging_:Z

.field private env:I

.field private eventQueue_:Lcn/codemao/android/stat/EventQueue;

.field private featureConsentValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private firstView:Z

.field private groupedFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected isAttributionEnabled:Z

.field protected isBeginSessionSent:Z

.field private isHttpPostForced:Z

.field private isImmediate:Z

.field private isStartOrRestart:Z

.field private lastView:Ljava/lang/String;

.field private lastViewStart:J

.field private messagingMode_:Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

.field private prevSessionDurationStartTime_:J

.field protected requiresConsent:Z

.field private shouldIgnoreCrawlers:Z

.field private starRatingCallback_:Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;

.field private startTimeRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final timerService_:Ljava/util/concurrent/ScheduledExecutorService;

.field private validFeatureNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/codemao/android/stat/CodeMaoStat;->timedEvents:Ljava/util/Map;

    .line 1566
    new-instance v0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;

    invoke-direct {v0}, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;-><init>()V

    sput-object v0, Lcn/codemao/android/stat/CodeMaoStat;->timeGenerator:Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;

    return-void
.end method

.method constructor <init>()V
    .registers 12

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->isStartOrRestart:Z

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->startTimeRecord:Ljava/util/Map;

    const-string v1, ""

    .line 143
    iput-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->chanel:Ljava/lang/String;

    .line 144
    iput v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->env:I

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->lastView:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 152
    iput-wide v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->lastViewStart:J

    .line 153
    iput-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->firstView:Z

    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isImmediate:Z

    .line 155
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->autoViewTracker:Z

    .line 159
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isHttpPostForced:Z

    .line 162
    iput-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->shouldIgnoreCrawlers:Z

    .line 163
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceIsAppCrawler:Z

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "Calypso AppCrawler"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->appCrawlerNames:Ljava/util/List;

    .line 172
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->addMetadataToPushIntents:Z

    .line 175
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->calledAtLeastOnceOnStart:Z

    .line 178
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->automaticTrackingShouldUseShortName:Z

    .line 181
    iput-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->isAttributionEnabled:Z

    .line 183
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isBeginSessionSent:Z

    .line 187
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->requiresConsent:Z

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    .line 190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->groupedFeatures:Ljava/util/Map;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->collectedConsentChanges:Ljava/util/List;

    const-string v2, "sessions"

    const-string v3, "events"

    const-string v4, "views"

    const-string v5, "location"

    const-string v6, "crashes"

    const-string v7, "attribution"

    const-string v8, "users"

    const-string v9, "push"

    const-string v10, "star-rating"

    .line 216
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->validFeatureNames:[Ljava/lang/String;

    .line 1430
    iput-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->appLaunchDeepLink:Z

    .line 260
    new-instance v0, Lcn/codemao/android/stat/ConnectionQueue;

    invoke-direct {v0}, Lcn/codemao/android/stat/ConnectionQueue;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    .line 261
    new-instance v0, Lcn/codemao/android/stat/UserData;

    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-direct {v0, v1}, Lcn/codemao/android/stat/UserData;-><init>(Lcn/codemao/android/stat/ConnectionQueue;)V

    sput-object v0, Lcn/codemao/android/stat/CodeMaoStat;->userData:Lcn/codemao/android/stat/UserData;

    .line 262
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->timerService_:Ljava/util/concurrent/ScheduledExecutorService;

    .line 263
    new-instance v3, Lcn/codemao/android/stat/CodeMaoStat$1;

    invoke-direct {v3, p0}, Lcn/codemao/android/stat/CodeMaoStat$1;-><init>(Lcn/codemao/android/stat/CodeMaoStat;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x12c

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 269
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->initConsent()V

    return-void
.end method

.method private declared-synchronized CreateFeatureGroup(Ljava/lang/String;[Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 6

    monitor-enter p0

    .line 2051
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "CodeMaoStat"

    .line 2052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a feature group with the name: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_26
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->groupedFeatures:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 2056
    monitor-exit p0

    return-object p0

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized SetConsentFeatureGroup(Ljava/lang/String;Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 6

    monitor-enter p0

    .line 2067
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "CodeMaoStat"

    .line 2068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting consent for feature group named: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] with value: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_2e
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->groupedFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2072
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p2

    if-eqz p2, :cond_5b

    const-string p2, "CodeMaoStat"

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set consent for a unknown feature group: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_6a

    .line 2076
    :cond_5b
    monitor-exit p0

    return-object p0

    .line 2079
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->groupedFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/stat/CodeMaoStat;->setConsent([Ljava/lang/String;Z)Lcn/codemao/android/stat/CodeMaoStat;
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_6a

    .line 2081
    monitor-exit p0

    return-object p0

    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic access$000(Lcn/codemao/android/stat/CodeMaoStat;)Lcn/codemao/android/stat/ConnectionQueue;
    .registers 1

    .line 73
    iget-object p0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    return-object p0
.end method

.method private addAppCrawlerName(Ljava/lang/String;)V
    .registers 4

    .line 1894
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding app crawler name: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeMaoStat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    if-eqz p1, :cond_32

    .line 1897
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1898
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->appCrawlerNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void
.end method

.method private declared-synchronized addCrashLog(Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4

    monitor-enter p0

    .line 1202
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Adding crash bread crumb"

    .line 1203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v0, "crashes"

    .line 1206
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_21

    if-nez v0, :cond_1c

    .line 1207
    monitor-exit p0

    return-object p0

    .line 1210
    :cond_1c
    :try_start_1c
    invoke-static {p1}, Lcn/codemao/android/stat/CrashDetails;->addLog(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    .line 1211
    monitor-exit p0

    return-object p0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private changeDeviceId(Lcn/codemao/android/stat/DeviceId$Type;Ljava/lang/String;)V
    .registers 6

    .line 758
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    const-string v1, "CodeMaoStat"

    if-eqz v0, :cond_11

    const-string v0, "Changing device ID"

    .line 759
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_11
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    if-eqz v0, :cond_6b

    .line 764
    iget v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    if-eqz v0, :cond_63

    if-eqz p1, :cond_5b

    .line 771
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->anyConsentGiven()Z

    move-result v0

    if-nez v0, :cond_31

    .line 772
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "Can\'t change Device ID if no consent is given"

    .line 773
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void

    .line 778
    :cond_31
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->roundedSecondsSinceLastSessionDurationUpdate()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v2}, Lcn/codemao/android/stat/ConnectionQueue;->getDeviceId()Lcn/codemao/android/stat/DeviceId;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/stat/DeviceId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/stat/ConnectionQueue;->endSession(ILjava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getDeviceId()Lcn/codemao/android/stat/DeviceId;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v2}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/codemao/android/stat/DeviceId;->changeToId(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId$Type;Ljava/lang/String;)V

    .line 780
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p1}, Lcn/codemao/android/stat/ConnectionQueue;->beginSession()V

    return-void

    .line 768
    :cond_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 765
    :cond_63
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "must call onStart before changeDeviceId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 762
    :cond_6b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init must be called before changeDeviceId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private changeDeviceId(Ljava/lang/String;)V
    .registers 4

    .line 790
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    const-string v1, "CodeMaoStat"

    if-eqz v0, :cond_11

    const-string v0, "Changing device ID"

    .line 791
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_11
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    if-eqz v0, :cond_53

    .line 796
    iget v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_43

    const-string v0, ""

    .line 799
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 803
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->anyConsentGiven()Z

    move-result v0

    if-nez v0, :cond_39

    .line 804
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_38

    const-string p1, "Can\'t change Device ID if no consent is given"

    .line 805
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void

    .line 810
    :cond_39
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->roundedSecondsSinceLastSessionDurationUpdate()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/stat/ConnectionQueue;->changeDeviceId(Ljava/lang/String;I)V

    return-void

    .line 800
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "deviceId cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 797
    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "must call onStart before changeDeviceId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 794
    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "init must be called before changeDeviceId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized checkAllConsent()Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 2235
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Checking and printing consent for All features"

    .line 2236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :cond_12
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "CodeMaoStat"

    .line 2240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is consent required? ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->requiresConsent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const-string v0, "push"

    .line 2244
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2248
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Feature named ["

    .line 2249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], consent value: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 2252
    :cond_75
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_88

    const-string v1, "CodeMaoStat"

    .line 2253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_1 .. :try_end_88} :catchall_8a

    .line 2256
    :cond_88
    monitor-exit p0

    return-object p0

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkIfDeviceIsAppCrawler()V
    .registers 4

    .line 1865
    invoke-static {}, Lcn/codemao/android/stat/DeviceInfo;->getDevice()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1867
    :goto_5
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->appCrawlerNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1868
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->appCrawlerNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    .line 1869
    iput-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceIsAppCrawler:Z

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_20
    return-void
.end method

.method private declared-synchronized clearAllEvents()V
    .registers 3

    monitor-enter p0

    .line 610
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Halting CodeMaoStat!"

    .line 611
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v0, 0x0

    .line 613
    iput-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    .line 614
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v1}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 616
    invoke-virtual {v1}, Lcn/codemao/android/stat/CountlyStore;->clear()V

    .line 618
    :cond_20
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/ConnectionQueue;->setContext(Landroid/content/Context;)V

    .line 619
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/ConnectionQueue;->setServerURL(Ljava/lang/String;)V

    .line 620
    sput-object v0, Lcn/codemao/android/stat/CodeMaoStat;->appKey:Ljava/lang/String;

    .line 621
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/ConnectionQueue;->setAppKey(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/ConnectionQueue;->setCountlyStore(Lcn/codemao/android/stat/CountlyStore;)V

    const-wide/16 v0, 0x0

    .line 623
    iput-wide v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->prevSessionDurationStartTime_:J

    const/4 v0, 0x0

    .line 624
    iput v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 625
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearAutomaticStarRatingSessionCount()V
    .registers 3

    .line 1804
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    const-string v1, "CodeMaoStat"

    if-nez v0, :cond_16

    .line 1805
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Can\'t call this function before init has been called"

    .line 1806
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1811
    :cond_16
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "Clearing star rating session count"

    .line 1812
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_25
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcn/codemao/android/stat/CountlyStarRating;->clearAutomaticStarRatingSessionCount(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized crashTest(I)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    .line 2325
    :try_start_4
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "CodeMaoStat"

    const-string v0, "Running crashTest 1"

    .line 2326
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_15
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->stackOverflow()V

    goto :goto_33

    :catchall_19
    move-exception p1

    goto :goto_82

    :cond_1b
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_39

    .line 2333
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "CodeMaoStat"

    const-string v0, "Running crashTest 2"

    .line 2334
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/16 p1, 0xa

    .line 2338
    div-int/2addr p1, v2

    .line 2369
    :goto_33
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_19

    monitor-exit p0

    return-object p1

    :cond_39
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne p1, v1, :cond_54

    .line 2342
    :try_start_3d
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_4e

    const-string p1, "CodeMaoStat"

    const-string v1, "Running crashTest 3"

    .line 2343
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v3, p1, v2

    move-object v3, p1

    goto :goto_4e

    :cond_54
    const/4 v0, 0x4

    if-ne p1, v0, :cond_70

    .line 2355
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "CodeMaoStat"

    const-string v0, "Running crashTest 4"

    .line 2356
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_68
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This is a crash"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2361
    :cond_70
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_81

    const-string p1, "CodeMaoStat"

    const-string v0, "Running crashTest 5"

    .line 2362
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_81
    throw v3
    :try_end_82
    .catchall {:try_start_3d .. :try_end_82} :catchall_19

    :goto_82
    monitor-exit p0

    throw p1
.end method

.method static currentDayOfWeek()I
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 1584
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    const/4 v0, 0x0

    return v0

    :pswitch_e  #0x7
    const/4 v0, 0x6

    return v0

    :pswitch_10  #0x6
    const/4 v0, 0x5

    return v0

    :pswitch_12  #0x5
    const/4 v0, 0x4

    return v0

    :pswitch_14  #0x4
    const/4 v0, 0x3

    return v0

    :pswitch_16  #0x3
    const/4 v0, 0x2

    return v0

    :pswitch_18  #0x2
    const/4 v0, 0x1

    return v0

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_18  #00000002
        :pswitch_16  #00000003
        :pswitch_14  #00000004
        :pswitch_12  #00000005
        :pswitch_10  #00000006
        :pswitch_e  #00000007
    .end packed-switch
.end method

.method static currentHour()I
    .registers 2

    .line 1576
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static currentTimestamp()I
    .registers 4

    .line 1531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static declared-synchronized currentTimestampMs()J
    .registers 3

    const-class v0, Lcn/codemao/android/stat/CodeMaoStat;

    monitor-enter v0

    .line 1569
    :try_start_3
    sget-object v1, Lcn/codemao/android/stat/CodeMaoStat;->timeGenerator:Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->uniqueTimestamp()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-wide v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized disableLocation()Lcn/codemao/android/stat/CodeMaoStat;
    .registers 3

    monitor-enter p0

    .line 1093
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Disabling location"

    .line 1094
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v0, "location"

    .line 1097
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_30

    if-nez v0, :cond_1c

    .line 1099
    monitor-exit p0

    return-object p0

    .line 1102
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->resetLocationValues()V

    .line 1103
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setLocationDisabled(Z)V

    .line 1104
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->sendLocation()V
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_30

    .line 1106
    monitor-exit p0

    return-object p0

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static enableCertificatePinning(Ljava/util/List;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    .line 1645
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "CodeMaoStat"

    const-string v1, "Enabling certificate pinning"

    .line 1646
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_11
    sput-object p0, Lcn/codemao/android/stat/CodeMaoStat;->certificatePinCertificates:Ljava/util/List;

    .line 1649
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized enableParameterTamperingProtection(Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4

    monitor-enter p0

    .line 1394
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Enabling tamper protection"

    .line 1395
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_12
    sput-object p1, Lcn/codemao/android/stat/ConnectionProcessor;->salt:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1398
    monitor-exit p0

    return-object p0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static enablePublicKeyPinning(Ljava/util/List;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    .line 1628
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "CodeMaoStat"

    const-string v1, "Enabling public key pinning"

    .line 1629
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_11
    sput-object p0, Lcn/codemao/android/stat/CodeMaoStat;->publicKeyPinCertificates:Ljava/util/List;

    .line 1632
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized endEvent(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1302
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->endEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized endEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1316
    :try_start_1
    sget-object v0, Lcn/codemao/android/stat/CodeMaoStat;->timedEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/stat/pojo/EventInfo;

    if-eqz v0, :cond_a9

    const-string v1, "events"

    .line 1319
    invoke-virtual {p0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_ac

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 1320
    monitor-exit p0

    return v2

    .line 1323
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_a1

    if-eqz p1, :cond_99

    .line 1326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_99

    .line 1329
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "CodeMaoStat"

    .line 1330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending eventInfo: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    if-eqz p2, :cond_8a

    .line 1334
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_82

    .line 1335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_82

    .line 1338
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7a

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_53

    .line 1339
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CodeMaoStat eventInfo segmentation value cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1336
    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CodeMaoStat eventInfo segmentation key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1344
    :cond_8a
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestampMs()J

    .line 1346
    iput-object p2, v0, Lcn/codemao/android/stat/pojo/EventInfo;->d:Ljava/util/Map;

    .line 1350
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {p1, v0}, Lcn/codemao/android/stat/EventQueue;->recordEvent(Lcn/codemao/android/stat/pojo/EventInfo;)V

    .line 1351
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->sendEventsIfNeeded()V
    :try_end_97
    .catchall {:try_start_16 .. :try_end_97} :catchall_ac

    .line 1352
    monitor-exit p0

    return v2

    .line 1327
    :cond_99
    :try_start_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Valid CodeMaoStat eventInfo key is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1324
    :cond_a1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CodeMaoStat.sharedInstance().init must be called before recordEvent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_ac

    :cond_a9
    const/4 p1, 0x0

    .line 1354
    monitor-exit p0

    return p1

    :catchall_ac
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private formatConsentChanges([Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 2016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 2017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2019
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_2d

    if-eqz v1, :cond_15

    const-string v2, ","

    .line 2021
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const/16 v2, 0x22

    .line 2023
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2024
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 2026
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2027
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2d
    const-string p1, "}"

    .line 2030
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_36
    const-string p2, "UTF-8"

    .line 2035
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_3c} :catch_3c

    :catch_3c
    return-object p1
.end method

.method private generateOpenUDID()Ljava/lang/String;
    .registers 6

    .line 2507
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    const/4 v2, 0x0

    const-string v3, "openudid_prefs"

    .line 2510
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2511
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2512
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2513
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "CodeMaoStat"

    const-string v2, "Generating openUDID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_29
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_47

    const-string v2, "9774d56d682e549c"

    .line 2516
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-ge v2, v4, :cond_59

    .line 2518
    :cond_47
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 2519
    new-instance v2, Ljava/math/BigInteger;

    const/16 v4, 0x40

    invoke-direct {v2, v4, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_59
    move-object v2, v1

    .line 2521
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2522
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2523
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_64
    return-object v2
.end method

.method public static getAppKey()Ljava/lang/String;
    .registers 1

    .line 210
    sget-object v0, Lcn/codemao/android/stat/CodeMaoStat;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 212
    :cond_b
    sget-object v0, Lcn/codemao/android/stat/CodeMaoStat;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method private getAppVersionCode()Ljava/lang/String;
    .registers 4

    .line 2494
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2497
    :try_start_6
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_24} :catch_25

    goto :goto_2b

    :catch_25
    move-exception v0

    .line 2500
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "0"

    :goto_2b
    return-object v0
.end method

.method private getAppVersionName()Ljava/lang/String;
    .registers 4

    .line 2481
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2484
    :try_start_6
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2485
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    .line 2487
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "1.0"

    :goto_1a
    return-object v0
.end method

.method private getAutomaticStarRatingSessionLimit()I
    .registers 5

    .line 1764
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    const-string v1, "CodeMaoStat"

    if-nez v0, :cond_17

    .line 1765
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Can\'t call this function before init has been called"

    .line 1766
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    .line 1771
    :cond_17
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcn/codemao/android/stat/CountlyStarRating;->getAutomaticStarRatingSessionLimit(Landroid/content/Context;)I

    move-result v0

    .line 1773
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting automatic star rating session limit: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v0
.end method

.method private getCurrentNetType()Ljava/lang/String;
    .registers 5

    .line 2425
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2426
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "unknow"

    if-nez v0, :cond_13

    goto :goto_50

    .line 2429
    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    const-string v1, "wifi"

    goto :goto_50

    .line 2431
    :cond_1d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_50

    .line 2432
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4d

    if-eq v0, v3, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4a

    const/16 v1, 0xd

    if-ne v0, v1, :cond_47

    const-string v0, "4g"

    goto :goto_4f

    :cond_47
    const-string v0, ""

    goto :goto_4f

    :cond_4a
    const-string v0, "3g"

    goto :goto_4f

    :cond_4d
    const-string v0, "2g"

    :goto_4f
    move-object v1, v0

    :cond_50
    :goto_50
    return-object v1
.end method

.method private getDeviceID()Ljava/lang/String;
    .registers 3

    .line 1924
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1927
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getDeviceId()Lcn/codemao/android/stat/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/DeviceId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1925
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "init must be called before getDeviceID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDeviceIDType()Lcn/codemao/android/stat/DeviceId$Type;
    .registers 3

    .line 1936
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1940
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getDeviceId()Lcn/codemao/android/stat/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/DeviceId;->getType()Lcn/codemao/android/stat/DeviceId$Type;

    move-result-object v0

    return-object v0

    .line 1937
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "init must be called before getDeviceID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getENVUrl()Ljava/lang/String;
    .registers 2

    .line 245
    iget v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->env:I

    if-eqz v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    const-string v0, "_dev"

    return-object v0
.end method

.method private getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "phone"

    .line 2408
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2411
    :try_start_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 2412
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 2414
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_20

    :catch_1e
    const-string p1, "000000000000000"

    :goto_20
    return-object p1
.end method

.method private getLanguage()Ljava/lang/String;
    .registers 4

    .line 2470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1a

    .line 2471
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_26

    .line 2473
    :cond_1a
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2476
    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScreenResolution()Ljava/lang/String;
    .registers 5

    .line 2451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "x"

    const-string v2, "window"

    const/16 v3, 0x11

    if-ge v0, v3, :cond_31

    .line 2454
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 2457
    :cond_31
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2458
    iget-object v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2459
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2460
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2461
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    return-object v0
.end method

.method private getStarRatingsCurrentVersionsSessionCount()I
    .registers 5

    .line 1784
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    const-string v1, "CodeMaoStat"

    if-nez v0, :cond_17

    .line 1785
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Can\'t call this function before init has been called"

    .line 1786
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    .line 1791
    :cond_17
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcn/codemao/android/stat/CountlyStarRating;->getCurrentVersionsSessionCount(Landroid/content/Context;)I

    move-result v0

    .line 1793
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting star rating current version session count: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v0
.end method

.method private declared-synchronized giveConsent([Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 2166
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "CodeMaoStat"

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Giving consent for features named: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x1

    .line 2169
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->setConsent([Ljava/lang/String;Z)Lcn/codemao/android/stat/CodeMaoStat;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 2171
    monitor-exit p0

    return-object p0

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized hasBeenCalledOnStart()Z
    .registers 2

    monitor-enter p0

    .line 1407
    :try_start_1
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->calledAtLeastOnceOnStart:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 11

    .line 287
    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;

    goto :goto_b

    :cond_9
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->ADVERTISING_ID:Lcn/codemao/android/stat/DeviceId$Type;

    :goto_b
    move-object v6, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/stat/CodeMaoStat;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 310
    invoke-direct/range {v0 .. v5}, Lcn/codemao/android/stat/CodeMaoStat;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 18

    monitor-enter p0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 327
    :try_start_e
    invoke-direct/range {v1 .. v11}, Lcn/codemao/android/stat/CodeMaoStat;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;ILcn/codemao/android/stat/CountlyStarRating$RatingCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;ILcn/codemao/android/stat/CountlyStarRating$RatingCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 15

    monitor-enter p0

    if-eqz p1, :cond_1d8

    .line 356
    :try_start_3
    invoke-static {p2}, Lcn/codemao/android/stat/CodeMaoStat;->isValidURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 359
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_32

    .line 360
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "CodeMaoStat"

    const-string v2, "Removing trailing \'/\' from provided server url"

    .line 361
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_32
    if-eqz p3, :cond_1c6

    .line 366
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1c6

    if-eqz p4, :cond_4b

    .line 369
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_4b

    .line 370
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valid deviceID is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    :goto_4b
    if-nez p4, :cond_60

    if-nez p5, :cond_60

    .line 373
    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object p5, Lcn/codemao/android/stat/DeviceId$Type;->OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;

    goto :goto_60

    .line 374
    :cond_58
    invoke-static {}, Lcn/codemao/android/stat/AdvertisingIdAdapter;->isAdvertisingIdAvailable()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 375
    sget-object p5, Lcn/codemao/android/stat/DeviceId$Type;->ADVERTISING_ID:Lcn/codemao/android/stat/DeviceId$Type;

    :cond_60
    :goto_60
    if-nez p4, :cond_75

    .line 377
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;

    if-ne p5, v0, :cond_75

    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_75

    .line 378
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valid deviceID is required because OpenUDID is not available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    :goto_75
    if-nez p4, :cond_8a

    .line 380
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->ADVERTISING_ID:Lcn/codemao/android/stat/DeviceId$Type;

    if-ne p5, v0, :cond_8a

    invoke-static {}, Lcn/codemao/android/stat/AdvertisingIdAdapter;->isAdvertisingIdAvailable()Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_8a

    .line 381
    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valid deviceID is required because Advertising ID is not available (you need to include Google Play services 4.0+ into your project)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getServerURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    .line 384
    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    .line 385
    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getDeviceId()Lcn/codemao/android/stat/DeviceId;

    move-result-object v0

    invoke-static {p4, p5, v0}, Lcn/codemao/android/stat/DeviceId;->deviceIDEqualsNullSafe(Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;Lcn/codemao/android/stat/DeviceId;)Z

    move-result v0

    if-eqz v0, :cond_b3

    goto :goto_bb

    .line 386
    :cond_b3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CodeMaoStat cannot be reinitialized with different values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_bb
    :goto_bb
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "CodeMaoStat"

    const-string v2, "Initializing CodeMaoStat SDk version 18.04"

    .line 390
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_cc
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f3

    const-string v0, "CodeMaoStat"

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is consent required? ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->requiresConsent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_f3
    invoke-static {}, Lcn/codemao/android/stat/MessagingAdapter;->isMessagingAvailable()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 400
    invoke-static {p1, p2, p3, p4, p5}, Lcn/codemao/android/stat/MessagingAdapter;->storeConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;)Z

    .line 405
    :cond_fc
    iput-object p7, p0, Lcn/codemao/android/stat/CodeMaoStat;->starRatingCallback_:Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;

    .line 406
    invoke-static {p1, p6, p8, p9, p10}, Lcn/codemao/android/stat/CountlyStarRating;->setStarRatingInitConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->checkIfDeviceIsAppCrawler()V

    .line 413
    iget-object p6, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    if-nez p6, :cond_17c

    .line 414
    new-instance p6, Lcn/codemao/android/stat/CountlyStore;

    invoke-direct {p6, p1}, Lcn/codemao/android/stat/CountlyStore;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_115

    .line 418
    new-instance p5, Lcn/codemao/android/stat/DeviceId;

    invoke-direct {p5, p6, p4}, Lcn/codemao/android/stat/DeviceId;-><init>(Lcn/codemao/android/stat/CountlyStore;Ljava/lang/String;)V

    goto :goto_11b

    .line 420
    :cond_115
    new-instance p4, Lcn/codemao/android/stat/DeviceId;

    invoke-direct {p4, p6, p5}, Lcn/codemao/android/stat/DeviceId;-><init>(Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId$Type;)V

    move-object p5, p4

    .line 424
    :goto_11b
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p4

    invoke-virtual {p4}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p4

    if-eqz p4, :cond_144

    const-string p4, "CodeMaoStat"

    .line 425
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "Currently cached advertising ID ["

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcn/codemao/android/stat/CountlyStore;->getCachedAdvertisingId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, "]"

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p4, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_144
    invoke-static {p1, p6}, Lcn/codemao/android/stat/AdvertisingIdAdapter;->cacheAdvertisingID(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;)V
    :try_end_147
    .catchall {:try_start_3 .. :try_end_147} :catchall_1d6

    .line 429
    :try_start_147
    invoke-virtual {p5, p1, p6, v1}, Lcn/codemao/android/stat/DeviceId;->init(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;Z)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14a} :catch_14b
    .catchall {:try_start_147 .. :try_end_14a} :catchall_1d6

    goto :goto_152

    :catch_14b
    :try_start_14b
    const-string p4, "CodeMaoStat"

    const-string p7, "Error"

    .line 431
    invoke-static {p4, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_152
    iget-object p4, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p4, p2}, Lcn/codemao/android/stat/ConnectionQueue;->setServerURL(Ljava/lang/String;)V

    .line 436
    sput-object p3, Lcn/codemao/android/stat/CodeMaoStat;->appKey:Ljava/lang/String;

    .line 437
    iget-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p2, p3}, Lcn/codemao/android/stat/ConnectionQueue;->setAppKey(Ljava/lang/String;)V

    .line 438
    iget-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p2, p6}, Lcn/codemao/android/stat/ConnectionQueue;->setCountlyStore(Lcn/codemao/android/stat/CountlyStore;)V

    .line 439
    iget-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p2, p5}, Lcn/codemao/android/stat/ConnectionQueue;->setDeviceId(Lcn/codemao/android/stat/DeviceId;)V

    .line 440
    new-instance p2, Lcn/codemao/android/stat/EventQueue;

    invoke-direct {p2, p6}, Lcn/codemao/android/stat/EventQueue;-><init>(Lcn/codemao/android/stat/CountlyStore;)V

    iput-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    const-string p2, "star-rating"

    .line 444
    invoke-virtual {p0, p2}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_17c

    .line 445
    iget-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat;->starRatingCallback_:Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;

    invoke-static {p1, p2}, Lcn/codemao/android/stat/CountlyStarRating;->registerAppSession(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V

    .line 449
    :cond_17c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    .line 452
    iget-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p2, p1}, Lcn/codemao/android/stat/ConnectionQueue;->setContext(Landroid/content/Context;)V

    .line 454
    iget-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->requiresConsent:Z

    if-eqz p1, :cond_1c4

    .line 456
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->collectedConsentChanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1b0

    .line 457
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->collectedConsentChanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_199
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1ab

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 458
    iget-object p3, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p3, p2}, Lcn/codemao/android/stat/ConnectionQueue;->sendConsentChanges(Ljava/lang/String;)V

    goto :goto_199

    .line 460
    :cond_1ab
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->collectedConsentChanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 465
    :cond_1b0
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1c4

    const-string p1, "CodeMaoStat"

    const-string p2, "CodeMaoStat is initialized with the current consent state:"

    .line 466
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->checkAllConsent()Lcn/codemao/android/stat/CodeMaoStat;
    :try_end_1c4
    .catchall {:try_start_14b .. :try_end_1c4} :catchall_1d6

    .line 471
    :cond_1c4
    monitor-exit p0

    return-object p0

    .line 367
    :cond_1c6
    :try_start_1c6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valid appKey is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_1ce
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valid serverURL is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1d6
    move-exception p1

    goto :goto_1e0

    .line 353
    :cond_1d8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valid context is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1e0
    .catchall {:try_start_1c6 .. :try_end_1e0} :catchall_1d6

    :goto_1e0
    monitor-exit p0

    throw p1
.end method

.method private initConsent()V
    .registers 1

    return-void
.end method

.method private initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;",
            ")",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 502
    invoke-direct/range {v0 .. v9}, Lcn/codemao/android/stat/CodeMaoStat;->initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;ZIII)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    return-object p1
.end method

.method private initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;I)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;",
            "I)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v7, p5

    .line 517
    invoke-direct/range {v0 .. v9}, Lcn/codemao/android/stat/CodeMaoStat;->initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;ZIII)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    return-object p1
.end method

.method private initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;",
            "Z)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    .line 532
    invoke-direct/range {v0 .. v9}, Lcn/codemao/android/stat/CodeMaoStat;->initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;ZIII)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;",
            ")",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    monitor-enter p0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 547
    :try_start_b
    invoke-direct/range {v0 .. v9}, Lcn/codemao/android/stat/CodeMaoStat;->initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;ZIII)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;",
            "Z)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    monitor-enter p0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 563
    :try_start_d
    invoke-direct/range {v1 .. v10}, Lcn/codemao/android/stat/CodeMaoStat;->initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;ZIII)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized initMessaging(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;ZIII)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;",
            "ZIII)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p5

    monitor-enter p0

    :try_start_4
    const-string v2, "cn.codemao.android.stat.messaging.CountlyPush"

    .line 581
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 582
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Please remove initMessaging() call, for FCM integration you need to use CountlyPush class"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_11} :catch_13
    .catchall {:try_start_4 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    goto :goto_7d

    :catch_13
    nop

    if-eqz v0, :cond_25

    .line 586
    :try_start_16
    invoke-static {}, Lcn/codemao/android/stat/MessagingAdapter;->isMessagingAvailable()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_25

    .line 587
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "you need to include sdk-messaging library instead of sdk if you want to use CodeMaoStat Messaging"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_25
    :goto_25
    iput-object v0, v1, Lcn/codemao/android/stat/CodeMaoStat;->messagingMode_:Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    .line 590
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v0, v1, Lcn/codemao/android/stat/CodeMaoStat;->addMetadataToPushIntents:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v3 .. v11}, Lcn/codemao/android/stat/MessagingAdapter;->init(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;II)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 595
    invoke-static {}, Lcn/codemao/android/stat/MessagingAdapter;->isMessagingAvailable()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 596
    iget-object v0, v1, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v2}, Lcn/codemao/android/stat/ConnectionQueue;->getServerURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v3}, Lcn/codemao/android/stat/ConnectionQueue;->getAppKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v4}, Lcn/codemao/android/stat/ConnectionQueue;->getDeviceId()Lcn/codemao/android/stat/DeviceId;

    move-result-object v4

    invoke-virtual {v4}, Lcn/codemao/android/stat/DeviceId;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v5}, Lcn/codemao/android/stat/ConnectionQueue;->getDeviceId()Lcn/codemao/android/stat/DeviceId;

    move-result-object v5

    invoke-virtual {v5}, Lcn/codemao/android/stat/DeviceId;->getType()Lcn/codemao/android/stat/DeviceId$Type;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcn/codemao/android/stat/MessagingAdapter;->storeConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;)Z
    :try_end_73
    .catchall {:try_start_16 .. :try_end_73} :catchall_11

    .line 599
    :cond_73
    monitor-exit p0

    return-object v1

    .line 591
    :cond_75
    :try_start_75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "couldn\'t initialize CodeMaoStat Messaging"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_11

    :goto_7d
    monitor-exit p0

    throw v0
.end method

.method private isHttpPostForced()Z
    .registers 2

    .line 1861
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->isHttpPostForced:Z

    return v0
.end method

.method private isValidFeatureName(Ljava/lang/String;)Z
    .registers 7

    .line 2000
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->validFeatureNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 2001
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method static isValidURL(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 1607
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 1609
    :try_start_9
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_e} :catch_f

    const/4 v0, 0x1

    :catch_f
    :cond_f
    return v0
.end method

.method private declared-synchronized logException(Ljava/lang/Exception;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4

    monitor-enter p0

    .line 1221
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Logging exception"

    .line 1222
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v0, "crashes"

    .line 1225
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_35

    if-nez v0, :cond_1c

    .line 1226
    monitor-exit p0

    return-object p0

    .line 1229
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1230
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1231
    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1232
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/codemao/android/stat/ConnectionQueue;->sendCrashReport(Ljava/lang/String;Z)V
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_35

    .line 1233
    monitor-exit p0

    return-object p0

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .registers 5

    .line 1433
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1435
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v1

    const-string v2, "CodeMaoStat"

    if-eqz v1, :cond_49

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity created: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ( main is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_94

    .line 1441
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_94

    .line 1443
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data in activity created intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (appLaunchDeepLink "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    iget-boolean v1, v1, Lcn/codemao/android/stat/CodeMaoStat;->appLaunchDeepLink:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_86
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/stat/CodeMaoStat;->appLaunchDeepLink:Z

    if-eqz v0, :cond_94

    .line 1447
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/codemao/android/stat/DeviceInfo;->deepLink:Ljava/lang/String;

    :cond_94
    return-void
.end method

.method private onRegistrationId(Ljava/lang/String;)V
    .registers 3

    .line 736
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->messagingMode_:Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    invoke-direct {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->onRegistrationId(Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;)V

    return-void
.end method

.method private onRegistrationId(Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;)V
    .registers 4

    const-string v0, "push"

    .line 743
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 747
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/stat/ConnectionQueue;->tokenSession(Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;)V

    return-void
.end method

.method private onStartHelper()V
    .registers 3

    .line 682
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->prevSessionDurationStartTime_:J

    .line 683
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->isStartOrRestart:Z

    if-eqz v0, :cond_f

    .line 684
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->beginSession()V

    :cond_f
    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->isStartOrRestart:Z

    return-void
.end method

.method private onStopHelper()V
    .registers 3

    .line 724
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->roundedSecondsSinceLastSessionDurationUpdate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/ConnectionQueue;->endSession(I)V

    const-wide/16 v0, 0x0

    .line 725
    iput-wide v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->prevSessionDurationStartTime_:J

    .line 727
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/EventQueue;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 728
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v1}, Lcn/codemao/android/stat/EventQueue;->events()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/ConnectionQueue;->recordEvents(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private declared-synchronized recordView(Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 961
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "CodeMaoStat"

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording view with name: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_viewname"

    .line 969
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 977
    monitor-exit p0

    return-object p0

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeConsent([Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 2181
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "CodeMaoStat"

    .line 2182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing consent for features named: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x0

    .line 2185
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->setConsent([Ljava/lang/String;Z)Lcn/codemao/android/stat/CodeMaoStat;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 2187
    monitor-exit p0

    return-object p0

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private reportViewDuration(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "views"

    .line 1463
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1471
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->startTimeRecord:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->startTimeRecord:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_82

    .line 1472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_viewname"

    .line 1473
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestampMs()J

    move-result-wide v1

    iget-object v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->startTimeRecord:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_dur"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestampMs()J

    move-result-wide v2

    iget-object v4, p0, Lcn/codemao/android/stat/CodeMaoStat;->startTimeRecord:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "     "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CodeMaoStat  dur"

    invoke-static {p2, p1}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EVENT_SESSION"

    .line 1478
    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_82
    return-void
.end method

.method private declared-synchronized resetLocationValues()V
    .registers 3

    monitor-enter p0

    .line 1110
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setLocationCountryCode(Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setLocationCity(Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setLocation(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setLocationIpAddress(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 1114
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendEventsForced()V
    .registers 3

    .line 1498
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v1}, Lcn/codemao/android/stat/EventQueue;->events()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/ConnectionQueue;->recordEvents(Ljava/lang/String;)V

    return-void
.end method

.method private sendEventsIfNeeded()V
    .registers 3

    .line 1487
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->isImmediate:Z

    if-eqz v0, :cond_10

    .line 1488
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v1}, Lcn/codemao/android/stat/EventQueue;->events()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/ConnectionQueue;->recordEvents(Ljava/lang/String;)V

    goto :goto_25

    .line 1489
    :cond_10
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/EventQueue;->size()I

    move-result v0

    sget v1, Lcn/codemao/android/stat/CodeMaoStat;->EVENT_QUEUE_SIZE_THRESHOLD:I

    if-lt v0, v1, :cond_25

    .line 1490
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v1}, Lcn/codemao/android/stat/EventQueue;->events()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/ConnectionQueue;->recordEvents(Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method private declared-synchronized setAutomaticStarRatingSessionLimit(I)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1745
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    if-nez v0, :cond_18

    .line 1746
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "CodeMaoStat"

    const-string v0, "Can\'t call this function before init has been called"

    .line 1747
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_45

    .line 1748
    monitor-exit p0

    return-object p0

    .line 1752
    :cond_18
    :try_start_18
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "CodeMaoStat"

    .line 1753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting automatic star rating session limit: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_3d
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, v1}, Lcn/codemao/android/stat/CountlyStarRating;->setStarRatingInitConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_45

    .line 1757
    monitor-exit p0

    return-object p0

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setConsent([Ljava/lang/String;Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 15

    monitor-enter p0

    .line 2093
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    const-string v1, "sessions"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2094
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    const-string v2, "sessions"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 2098
    :goto_1c
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    const-string v3, "location"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2099
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    const-string v3, "location"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    .line 2104
    :goto_36
    array-length v3, p1

    move v5, v0

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_f2

    aget-object v6, p1, v4

    .line 2105
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v7

    if-eqz v7, :cond_70

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v7

    invoke-virtual {v7}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_70

    const-string v7, "CodeMaoStat"

    .line 2106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting consent for feature named: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] with value: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_70
    invoke-direct {p0, v6}, Lcn/codemao/android/stat/CodeMaoStat;->isValidFeatureName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_92

    const-string v7, "CodeMaoStat"

    .line 2110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Given feature: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] is not a valid name, ignoring it"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 2115
    :cond_92
    iget-object v7, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x1

    .line 2118
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x34af1a

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v9, :cond_c6

    const v9, 0x53bfd09d

    if-eq v8, v9, :cond_bc

    const v9, 0x714f9fb5

    if-eq v8, v9, :cond_b2

    goto :goto_cf

    :cond_b2
    const-string v8, "location"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cf

    const/4 v7, 0x2

    goto :goto_cf

    :cond_bc
    const-string v8, "sessions"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cf

    const/4 v7, 0x1

    goto :goto_cf

    :cond_c6
    const-string v8, "push"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cf

    const/4 v7, 0x0

    :cond_cf
    :goto_cf
    if-eqz v7, :cond_e5

    if-eq v7, v11, :cond_e3

    if-eq v7, v10, :cond_d6

    goto :goto_ee

    :cond_d6
    if-eqz v2, :cond_ee

    if-nez p2, :cond_ee

    .line 2128
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->resetLocationValues()V

    .line 2129
    iget-object v6, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v6}, Lcn/codemao/android/stat/ConnectionQueue;->sendLocation()V

    goto :goto_ee

    :cond_e3
    move v5, p2

    goto :goto_ee

    .line 2120
    :cond_e5
    iget-object v6, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v6}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcn/codemao/android/stat/CountlyStore;->setConsentPush(Z)V

    :cond_ee
    :goto_ee
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_39

    .line 2135
    :cond_f2
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/stat/CodeMaoStat;->formatConsentChanges([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2137
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_10d

    .line 2139
    iget-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p2, p1}, Lcn/codemao/android/stat/ConnectionQueue;->sendConsentChanges(Ljava/lang/String;)V

    if-eq v0, v5, :cond_112

    if-eqz v5, :cond_112

    .line 2146
    iget-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isBeginSessionSent:Z

    if-eqz p1, :cond_112

    .line 2148
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->onStartHelper()V

    goto :goto_112

    .line 2153
    :cond_10d
    iget-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat;->collectedConsentChanges:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_112
    .catchall {:try_start_1 .. :try_end_112} :catchall_114

    .line 2156
    :cond_112
    :goto_112
    monitor-exit p0

    return-object p0

    :catchall_114
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setCustomCrashSegments(Ljava/util/Map;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    monitor-enter p0

    .line 1181
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Setting custom crash segments"

    .line 1182
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v0, "crashes"

    .line 1185
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_23

    if-nez v0, :cond_1c

    .line 1186
    monitor-exit p0

    return-object p0

    :cond_1c
    if-eqz p1, :cond_21

    .line 1190
    :try_start_1e
    invoke-static {p1}, Lcn/codemao/android/stat/CrashDetails;->setCustomSegments(Ljava/util/Map;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    .line 1192
    :cond_21
    monitor-exit p0

    return-object p0

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setCustomUserData(Ljava/util/Map;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    monitor-enter p0

    .line 1077
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Setting custom user data"

    .line 1078
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz p1, :cond_17

    .line 1081
    invoke-static {p1}, Lcn/codemao/android/stat/UserData;->setCustomData(Ljava/util/Map;)V

    .line 1082
    :cond_17
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p1}, Lcn/codemao/android/stat/ConnectionQueue;->sendUserData()V

    .line 1083
    invoke-static {}, Lcn/codemao/android/stat/UserData;->clear()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 1084
    monitor-exit p0

    return-object p0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setDisableUpdateSessionRequests(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4

    monitor-enter p0

    .line 1368
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Disabling periodic session time updates"

    .line 1369
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_12
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->disableUpdateSessionRequests_:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1372
    monitor-exit p0

    return-object p0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setEnableAttribution(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4

    monitor-enter p0

    .line 1970
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Setting if attribution should be enabled"

    .line 1971
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_12
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isAttributionEnabled:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1974
    monitor-exit p0

    return-object p0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setHttpPostForced(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1847
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "CodeMaoStat"

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting if HTTP POST is forced: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_26
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isHttpPostForced:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1852
    monitor-exit p0

    return-object p0

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setIfStarRatingDialogIsCancellable(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1824
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    if-nez v0, :cond_18

    .line 1825
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "CodeMaoStat"

    const-string v0, "Can\'t call this function before init has been called"

    .line 1826
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_44

    .line 1827
    monitor-exit p0

    return-object p0

    .line 1831
    :cond_18
    :try_start_18
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "CodeMaoStat"

    .line 1832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting if star rating is cancellable: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_3d
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/codemao/android/stat/CountlyStarRating;->setIfRatingDialogIsCancellable(Landroid/content/Context;Z)V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_44

    .line 1837
    monitor-exit p0

    return-object p0

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setIfStarRatingShownAutomatically(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1700
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    if-nez v0, :cond_18

    .line 1701
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "CodeMaoStat"

    const-string v0, "Can\'t call this function before init has been called"

    .line 1702
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_44

    .line 1703
    monitor-exit p0

    return-object p0

    .line 1707
    :cond_18
    :try_start_18
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "CodeMaoStat"

    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting to show star rating automaticaly: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_3d
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/codemao/android/stat/CountlyStarRating;->setShowDialogAutomatically(Landroid/content/Context;Z)V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_44

    .line 1713
    monitor-exit p0

    return-object p0

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 7

    monitor-enter p0

    .line 1127
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Setting location parameters"

    .line 1128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v0, "location"

    .line 1131
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_8a

    if-nez v0, :cond_1c

    .line 1132
    monitor-exit p0

    return-object p0

    :cond_1c
    if-eqz p1, :cond_27

    .line 1136
    :try_start_1e
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CountlyStore;->setLocationCountryCode(Ljava/lang/String;)V

    :cond_27
    if-eqz p2, :cond_32

    .line 1140
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/codemao/android/stat/CountlyStore;->setLocationCity(Ljava/lang/String;)V

    :cond_32
    if-eqz p3, :cond_3d

    .line 1144
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/codemao/android/stat/CountlyStore;->setLocation(Ljava/lang/String;)V

    :cond_3d
    if-eqz p4, :cond_48

    .line 1148
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcn/codemao/android/stat/CountlyStore;->setLocationIpAddress(Ljava/lang/String;)V

    :cond_48
    if-nez p1, :cond_4c

    if-nez p2, :cond_50

    :cond_4c
    if-nez p2, :cond_61

    if-eqz p1, :cond_61

    .line 1152
    :cond_50
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "CodeMaoStat"

    const-string v1, "In \"setLocation\" both city and country code need to be set at the same time to be sent"

    .line 1153
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    if-nez p1, :cond_69

    if-nez p2, :cond_69

    if-nez p3, :cond_69

    if-eqz p4, :cond_73

    .line 1158
    :cond_69
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p1}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/codemao/android/stat/CountlyStore;->setLocationDisabled(Z)V

    .line 1162
    :cond_73
    iget-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isBeginSessionSent:Z

    if-nez p1, :cond_83

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    const-string p2, "sessions"

    invoke-virtual {p1, p2}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_88

    .line 1165
    :cond_83
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p1}, Lcn/codemao/android/stat/ConnectionQueue;->sendLocation()V
    :try_end_88
    .catchall {:try_start_1e .. :try_end_88} :catchall_8a

    .line 1170
    :cond_88
    monitor-exit p0

    return-object p0

    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setPushIntentAddMetadata(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1944
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "CodeMaoStat"

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting if adding metadata to push intents: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_26
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->addMetadataToPushIntents:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1948
    monitor-exit p0

    return-object p0

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setRequiresConsent(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1978
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "CodeMaoStat"

    .line 1979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting if consent should be required, ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_26
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->requiresConsent:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1982
    monitor-exit p0

    return-object p0

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setShouldIgnoreCrawlers(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1881
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "CodeMaoStat"

    .line 1882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting if should ignore app crawlers: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_26
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->shouldIgnoreCrawlers:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1885
    monitor-exit p0

    return-object p0

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setStarRatingDialogTexts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 6

    monitor-enter p0

    .line 1678
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    if-nez v0, :cond_18

    .line 1679
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "CodeMaoStat"

    const-string p2, "Can\'t call this function before init has been called"

    .line 1680
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_31

    .line 1681
    monitor-exit p0

    return-object p0

    .line 1685
    :cond_18
    :try_start_18
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "CodeMaoStat"

    const-string v1, "Setting star rating texts"

    .line 1686
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_29
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1, p2, p3}, Lcn/codemao/android/stat/CountlyStarRating;->setStarRatingInitConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_31

    .line 1691
    monitor-exit p0

    return-object p0

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setStarRatingDisableAskingForEachAppVersion(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1722
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    if-nez v0, :cond_18

    .line 1723
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "CodeMaoStat"

    const-string v0, "Can\'t call this function before init has been called"

    .line 1724
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_44

    .line 1725
    monitor-exit p0

    return-object p0

    .line 1729
    :cond_18
    :try_start_18
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "CodeMaoStat"

    .line 1730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting to disable showing of star rating for each app version:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_3d
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/codemao/android/stat/CountlyStarRating;->setStarRatingDisableAskingForEachAppVersion(Landroid/content/Context;Z)V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_44

    .line 1735
    monitor-exit p0

    return-object p0

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setUserData(Ljava/util/Map;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1016
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->setUserData(Ljava/util/Map;Ljava/util/Map;)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setUserData(Ljava/util/Map;Ljava/util/Map;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/codemao/android/stat/CodeMaoStat;"
        }
    .end annotation

    monitor-enter p0

    .line 1058
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Setting user data"

    .line 1059
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_12
    invoke-static {p1}, Lcn/codemao/android/stat/UserData;->setData(Ljava/util/Map;)V

    if-eqz p2, :cond_1a

    .line 1063
    invoke-static {p2}, Lcn/codemao/android/stat/UserData;->setCustomData(Ljava/util/Map;)V

    .line 1064
    :cond_1a
    iget-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {p1}, Lcn/codemao/android/stat/ConnectionQueue;->sendUserData()V

    .line 1065
    invoke-static {}, Lcn/codemao/android/stat/UserData;->clear()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1066
    monitor-exit p0

    return-object p0

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;
    .registers 1

    .line 231
    sget-object v0, Lcn/codemao/android/stat/CodeMaoStat$SingletonHolder;->instance:Lcn/codemao/android/stat/CodeMaoStat;

    return-object v0
.end method

.method private showStarRating(Landroid/app/Activity;Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V
    .registers 5

    .line 1659
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "CodeMaoStat"

    const-string v1, "Showing star rating"

    .line 1660
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v0, "star-rating"

    .line 1663
    invoke-virtual {p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 1667
    :cond_1a
    invoke-static {p1, p2}, Lcn/codemao/android/stat/CountlyStarRating;->showStarRating(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V

    return-void
.end method

.method private stackOverflow()V
    .registers 1

    .line 2318
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->stackOverflow()V

    return-void
.end method

.method private declared-synchronized startEvent(Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 1279
    :try_start_1
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_53

    if-eqz p1, :cond_4b

    .line 1282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 1285
    sget-object v0, Lcn/codemao/android/stat/CodeMaoStat;->timedEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_5b

    if-eqz v1, :cond_1a

    const/4 p1, 0x0

    .line 1286
    monitor-exit p0

    return p1

    .line 1288
    :cond_1a
    :try_start_1a
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "CodeMaoStat"

    .line 1289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting event: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_3f
    new-instance v1, Lcn/codemao/android/stat/pojo/EventInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcn/codemao/android/stat/pojo/EventInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_5b

    const/4 p1, 0x1

    .line 1292
    monitor-exit p0

    return p1

    .line 1283
    :cond_4b
    :try_start_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Valid CodeMaoStat event key is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1280
    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CodeMaoStat.sharedInstance().init must be called before recordEvent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected anyConsentGiven()Z
    .registers 5

    .line 2265
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->requiresConsent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 2270
    :cond_6
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2271
    iget-object v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    return v1

    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized enableCrashReporting()Lcn/codemao/android/stat/CodeMaoStat;
    .registers 3

    monitor-enter p0

    .line 1242
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Enabling unhandled crash reporting"

    .line 1243
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 1248
    new-instance v1, Lcn/codemao/android/stat/CodeMaoStat$2;

    invoke-direct {v1, p0, v0}, Lcn/codemao/android/stat/CodeMaoStat$2;-><init>(Lcn/codemao/android/stat/CodeMaoStat;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1268
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 1269
    monitor-exit p0

    return-object p0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getActivityCount()I
    .registers 2

    .line 2309
    iget v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    return v0
.end method

.method getConnectionQueue()Lcn/codemao/android/stat/ConnectionQueue;
    .registers 2

    .line 2281
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    return-object v0
.end method

.method declared-synchronized getConsent(Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 2197
    :try_start_1
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->requiresConsent:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_90

    if-nez v0, :cond_8

    const/4 p1, 0x1

    .line 2199
    monitor-exit p0

    return p1

    .line 2202
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_5d

    const-string v0, "push"

    .line 2205
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2208
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CountlyStore;->getConsentPush()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2210
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "CodeMaoStat"

    .line 2211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Push consent has not been set this session. Setting the value found stored in preferences:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_4d
    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->featureConsentValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5d

    .line 2218
    :cond_5b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2222
    :cond_5d
    :goto_5d
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "CodeMaoStat"

    .line 2223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning consent for feature named: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_8a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_8e
    .catchall {:try_start_8 .. :try_end_8e} :catchall_90

    monitor-exit p0

    return p1

    :catchall_90
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDeviceInfo()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2375
    :try_start_1
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "CodeMaoStat"

    const-string v1, "please init CodeMaoStat first"

    .line 2376
    invoke-static {v0, v1}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_122

    const/4 v0, 0x0

    .line 2377
    monitor-exit p0

    return-object v0

    .line 2379
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_2d

    const-string v1, "net"

    .line 2380
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->getCurrentNetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "la"

    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_122

    monitor-exit p0

    return-object v0

    .line 2384
    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    .line 2385
    invoke-static {}, Lcn/codemao/android/stat/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v0, ""

    invoke-static {}, Lcn/codemao/android/stat/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 2386
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "uid"

    invoke-static {}, Lcn/codemao/android/stat/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 2388
    :cond_52
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "uid"

    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->generateOpenUDID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    :goto_5d
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "swvc"

    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->getAppVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "swvn"

    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2392
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2393
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "net"

    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->getCurrentNetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "la"

    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "sysv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "pid"

    sget-object v2, Lcn/codemao/android/stat/CodeMaoStat;->appKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "density"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "resolution"

    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->getScreenResolution()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "devid"

    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcn/codemao/android/stat/CodeMaoStat;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "channel"

    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->chanel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "sdkvn"

    const-string v2, "0.1.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2403
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;

    const-string v1, "pkg"

    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceInfoMap:Ljava/util/Map;
    :try_end_120
    .catchall {:try_start_2d .. :try_end_120} :catchall_122

    monitor-exit p0

    return-object v0

    :catchall_122
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDisableUpdateSessionRequests()Z
    .registers 2

    monitor-enter p0

    .line 2313
    :try_start_1
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->disableUpdateSessionRequests_:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventQueue()Lcn/codemao/android/stat/EventQueue;
    .registers 2

    .line 2293
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    return-object v0
.end method

.method getPrevSessionDurationStartTime()J
    .registers 3

    .line 2301
    iget-wide v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->prevSessionDurationStartTime_:J

    return-wide v0
.end method

.method getTimerService()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 2289
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->timerService_:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method protected ifShouldIgnoreCrawlers()Z
    .registers 2

    .line 1915
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->shouldIgnoreCrawlers:Z

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 11

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://collection.codemao.cn/report/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "android"

    goto :goto_14

    :cond_13
    move-object v1, p2

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->getENVUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "CodeMaoStat"

    .line 293
    invoke-static {v0, v4}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 294
    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;

    goto :goto_33

    :cond_31
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->ADVERTISING_ID:Lcn/codemao/android/stat/DeviceId$Type;

    :goto_33
    move-object v7, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcn/codemao/android/stat/CodeMaoStat;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    return-object p1
.end method

.method protected isDeviceAppCrawler()Z
    .registers 2

    .line 1908
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->deviceIsAppCrawler:Z

    return v0
.end method

.method public declared-synchronized isInitialized()Z
    .registers 2

    monitor-enter p0

    .line 488
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoggingEnabled()Z
    .registers 2

    monitor-enter p0

    .line 1390
    :try_start_1
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->enableLogging_:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSendImmediate(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4

    monitor-enter p0

    .line 936
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Set send immediately"

    .line 937
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_12
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isImmediate:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 940
    monitor-exit p0

    return-object p0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isViewTrackingEnabled()Z
    .registers 2

    monitor-enter p0

    .line 949
    :try_start_1
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->autoViewTracker:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStart(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    .line 636
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    const-string v0, "CodeMaoStat"

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CodeMaoStat onStart called, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] -> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] activities now open"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->appLaunchDeepLink:Z

    .line 641
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    if-eqz v0, :cond_a4

    .line 645
    iget v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    if-ne v0, v1, :cond_45

    .line 647
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->onStartHelper()V

    .line 651
    :cond_45
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcn/codemao/android/stat/ReferrerReceiver;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string v2, "CodeMaoStat"

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking referrer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    if-eqz v0, :cond_77

    .line 656
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v2, v0}, Lcn/codemao/android/stat/ConnectionQueue;->sendReferrerData(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcn/codemao/android/stat/ReferrerReceiver;->deleteReferrer(Landroid/content/Context;)V

    .line 660
    :cond_77
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->inForeground()V

    .line 662
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->autoViewTracker:Z

    if-eqz v0, :cond_a0

    .line 665
    iget-boolean v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->automaticTrackingShouldUseShortName:Z

    if-eqz v0, :cond_8b

    .line 666
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_93

    .line 668
    :cond_8b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 670
    :goto_93
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->startTimeRecord:Ljava/util/Map;

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestampMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_a0
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->calledAtLeastOnceOnStart:Z
    :try_end_a2
    .catchall {:try_start_1 .. :try_end_a2} :catchall_ac

    .line 675
    monitor-exit p0

    return-void

    .line 642
    :cond_a4
    :try_start_a4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "init must be called before onStart"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_ac

    :catchall_ac
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStop(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    .line 699
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    const-string v0, "CodeMaoStat"

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CodeMaoStat onStop called, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] -> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] activities now open"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_34
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    if-eqz v0, :cond_6f

    .line 706
    iget v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    if-eqz v0, :cond_67

    const-string v0, "stop"

    .line 709
    iget-boolean v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->automaticTrackingShouldUseShortName:Z

    if-eqz v2, :cond_4b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_53

    :cond_4b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_53
    invoke-direct {p0, v0, p1}, Lcn/codemao/android/stat/CodeMaoStat;->reportViewDuration(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    if-nez p1, :cond_62

    .line 712
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->onStopHelper()V

    .line 713
    iput-boolean v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->isStartOrRestart:Z

    .line 715
    :cond_62
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->inBackground()V
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_77

    .line 717
    monitor-exit p0

    return-void

    .line 707
    :cond_67
    :try_start_67
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "must call onStart before onStop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 704
    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "init must be called before onStop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onTimer()V
    .registers 3

    monitor-enter p0

    .line 1506
    :try_start_1
    iget v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->activityCount_:I

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_1d

    .line 1511
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/EventQueue;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1512
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    iget-object v1, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v1}, Lcn/codemao/android/stat/EventQueue;->events()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/ConnectionQueue;->recordEvents(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1515
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recordEvent(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 820
    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized recordEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 874
    :try_start_1
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_de

    if-eqz p1, :cond_d6

    .line 877
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d6

    .line 880
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "CodeMaoStat"

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording event with key: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_6a

    .line 885
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_41
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_55

    .line 886
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_56

    :cond_55
    const/4 v3, 0x1

    .line 889
    :cond_56
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_68

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_41

    :cond_68
    const/4 v3, 0x1

    goto :goto_41

    :cond_6a
    const/4 v3, 0x0

    :cond_6b
    if-eqz v3, :cond_6e

    const/4 p2, 0x0

    :cond_6e
    const/4 v2, -0x1

    .line 898
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x373aa5

    if-eq v3, v4, :cond_87

    const v4, 0x76508296

    if-eq v3, v4, :cond_7e

    goto :goto_91

    :cond_7e
    const-string v3, "session"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_92

    :cond_87
    const-string v0, "view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v0, 0x1

    goto :goto_92

    :cond_91
    :goto_91
    const/4 v0, -0x1

    :goto_92
    if-eqz v0, :cond_c0

    if-eq v0, v1, :cond_ab

    .line 912
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 913
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/stat/EventQueue;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 914
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->sendEventsIfNeeded()V

    goto :goto_d4

    .line 906
    :cond_ab
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "views"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 907
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/stat/EventQueue;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 908
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->sendEventsForced()V

    goto :goto_d4

    .line 900
    :cond_c0
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "star-rating"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 901
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/stat/EventQueue;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 902
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->sendEventsForced()V
    :try_end_d4
    .catchall {:try_start_1 .. :try_end_d4} :catchall_e6

    .line 919
    :cond_d4
    :goto_d4
    monitor-exit p0

    return-void

    .line 878
    :cond_d6
    :try_start_d6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Valid CodeMaoStat event key is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 875
    :cond_de
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CodeMaoStat.sharedInstance().init must be called before recordEvent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e6
    .catchall {:try_start_d6 .. :try_end_e6} :catchall_e6

    :catchall_e6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordEventForced(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 825
    :try_start_1
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_de

    if-eqz p1, :cond_d6

    .line 828
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d6

    .line 831
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "CodeMaoStat"

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording event with key: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_6a

    .line 836
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_41
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_55

    .line 837
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_56

    :cond_55
    const/4 v3, 0x1

    .line 840
    :cond_56
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_68

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_41

    :cond_68
    const/4 v3, 0x1

    goto :goto_41

    :cond_6a
    const/4 v3, 0x0

    :cond_6b
    if-eqz v3, :cond_6e

    const/4 p2, 0x0

    :cond_6e
    const/4 v2, -0x1

    .line 850
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x373aa5

    if-eq v3, v4, :cond_87

    const v4, 0x76508296

    if-eq v3, v4, :cond_7e

    goto :goto_91

    :cond_7e
    const-string v3, "session"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_92

    :cond_87
    const-string v0, "view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v0, 0x1

    goto :goto_92

    :cond_91
    :goto_91
    const/4 v0, -0x1

    :goto_92
    if-eqz v0, :cond_c0

    if-eq v0, v1, :cond_ab

    .line 864
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 865
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/stat/EventQueue;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 866
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->sendEventsForced()V

    goto :goto_d4

    .line 858
    :cond_ab
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "views"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 859
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/stat/EventQueue;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 860
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->sendEventsForced()V

    goto :goto_d4

    .line 852
    :cond_c0
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "star-rating"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 853
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/stat/EventQueue;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 854
    invoke-direct {p0}, Lcn/codemao/android/stat/CodeMaoStat;->sendEventsForced()V
    :try_end_d4
    .catchall {:try_start_1 .. :try_end_d4} :catchall_e6

    .line 870
    :cond_d4
    :goto_d4
    monitor-exit p0

    return-void

    .line 829
    :cond_d6
    :try_start_d6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Valid CodeMaoStat event key is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 826
    :cond_de
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CodeMaoStat.sharedInstance().init must be called before recordEvent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e6
    .catchall {:try_start_d6 .. :try_end_e6} :catchall_e6

    :catchall_e6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method roundedSecondsSinceLastSessionDurationUpdate()I
    .registers 5

    .line 1521
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1522
    iget-wide v2, p0, Lcn/codemao/android/stat/CodeMaoStat;->prevSessionDurationStartTime_:J

    sub-long v2, v0, v2

    .line 1523
    iput-wide v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->prevSessionDurationStartTime_:J

    long-to-double v0, v2

    const-wide v2, 0x41cdcd6500000000L  # 1.0E9

    div-double/2addr v0, v2

    .line 1524
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public declared-synchronized setAutoTrackingUseShortName(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1957
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "CodeMaoStat"

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting if automatic view tracking should use short names: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :cond_26
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->automaticTrackingShouldUseShortName:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1961
    monitor-exit p0

    return-object p0

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setChannel(Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 2

    monitor-enter p0

    .line 235
    :try_start_1
    iput-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->chanel:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 236
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setConnectionQueue(Lcn/codemao/android/stat/ConnectionQueue;)V
    .registers 2

    .line 2285
    iput-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    return-void
.end method

.method public declared-synchronized setENV(I)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 2

    monitor-enter p0

    .line 240
    :try_start_1
    iput p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->env:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 241
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setEventQueue(Lcn/codemao/android/stat/EventQueue;)V
    .registers 2

    .line 2297
    iput-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->eventQueue_:Lcn/codemao/android/stat/EventQueue;

    return-void
.end method

.method public declared-synchronized setEventQueueSizeToSend(I)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 5

    monitor-enter p0

    .line 1411
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "CodeMaoStat"

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting event queue size: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_26
    sput p1, Lcn/codemao/android/stat/CodeMaoStat;->EVENT_QUEUE_SIZE_THRESHOLD:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1415
    monitor-exit p0

    return-object p0

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventQueueTimeToSend(J)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 10

    monitor-enter p0

    .line 1419
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->timerService_:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_11

    .line 1420
    new-instance v1, Lcn/codemao/android/stat/CodeMaoStat$3;

    invoke-direct {v1, p0}, Lcn/codemao/android/stat/CodeMaoStat$3;-><init>(Lcn/codemao/android/stat/CodeMaoStat;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    move-wide v4, p1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1427
    :cond_11
    monitor-exit p0

    return-object p0

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoggingEnabled(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4

    monitor-enter p0

    .line 1382
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Enabling logging"

    .line 1383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_12
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->enableLogging_:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1386
    monitor-exit p0

    return-object p0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setPrevSessionDurationStartTime(J)V
    .registers 3

    .line 2305
    iput-wide p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->prevSessionDurationStartTime_:J

    return-void
.end method

.method public declared-synchronized setResultCallback(Lcn/codemao/android/stat/UploadResultCallback;)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 3

    monitor-enter p0

    .line 476
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat;->connectionQueue_:Lcn/codemao/android/stat/ConnectionQueue;

    if-eqz v0, :cond_8

    .line 477
    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/ConnectionQueue;->setUploadResultCallback(Lcn/codemao/android/stat/UploadResultCallback;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 478
    :cond_8
    monitor-exit p0

    return-object p0

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setViewTracking(Z)Lcn/codemao/android/stat/CodeMaoStat;
    .registers 4

    monitor-enter p0

    .line 928
    :try_start_1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CodeMaoStat"

    const-string v1, "Enabling automatic view tracking"

    .line 929
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_12
    iput-boolean p1, p0, Lcn/codemao/android/stat/CodeMaoStat;->autoViewTracker:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 932
    monitor-exit p0

    return-object p0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method
