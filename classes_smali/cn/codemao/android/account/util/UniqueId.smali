.class public Lcn/codemao/android/account/util/UniqueId;
.super Ljava/lang/Object;
.source "UniqueId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/util/UniqueId$Source;,
        Lcn/codemao/android/account/util/UniqueId$InstanceHolder;
    }
.end annotation


# static fields
.field private static final EXTERNAL_FILE_PATH:Ljava/lang/String;

.field private static final FILE_NAME:Ljava/lang/String; = "CM_PSEUDO_DI"

.field private static final INVALID_ANDROID_ID:Ljava/lang/String; = "9774d56d682e549c"

.field private static final INVALID_MAC_00:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final INVALID_MAC_02:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final INVALID_SERIAL:Ljava/lang/String; = "unknown"


# instance fields
.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$A9d54dFmZPbjx8UglgcrHjXgszo(Lcn/codemao/android/account/util/UniqueId;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId;->lambda$init$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".codemao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/codemao/android/account/util/UniqueId;->EXTERNAL_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/account/util/UniqueId$1;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcn/codemao/android/account/util/UniqueId;->EXTERNAL_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1

    .line 36
    invoke-static {p0}, Lcn/codemao/android/account/util/UniqueId;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/account/util/UniqueId;
    .registers 1

    .line 50
    invoke-static {}, Lcn/codemao/android/account/util/UniqueId$InstanceHolder;->access$000()Lcn/codemao/android/account/util/UniqueId;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$init$0(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init uniqueId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/account/util/UniqueId;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public getUniquePseudoId()Ljava/lang/String;
    .registers 3

    .line 84
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUniquePseudoId找到内存缓存="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->log(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    return-object v0

    .line 88
    :cond_21
    new-instance v0, Lcn/codemao/android/account/util/UniqueId$Source;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/account/util/UniqueId$Source;-><init>(Lcn/codemao/android/account/util/UniqueId$1;)V

    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId$Source;->access$300(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    const-string v0, "getUniquePseudoId没有内存缓存，开始从disk读取或者生成"

    .line 89
    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->log(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, ""

    .line 91
    iput-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcn/codemao/android/account/util/UniqueId;->init()V

    .line 94
    :cond_41
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .registers 4

    const-string v0, "uniqueId now init~"

    .line 62
    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->log(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcn/codemao/android/account/util/UniqueId$Source;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/account/util/UniqueId$Source;-><init>(Lcn/codemao/android/account/util/UniqueId$1;)V

    .line 65
    invoke-virtual {v0}, Lcn/codemao/android/account/util/UniqueId$Source;->memory()Lio/reactivex/Observable;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lcn/codemao/android/account/util/UniqueId$Source;->disk()Lio/reactivex/Observable;

    move-result-object v2

    .line 67
    invoke-virtual {v0}, Lcn/codemao/android/account/util/UniqueId$Source;->generate()Lio/reactivex/Observable;

    move-result-object v0

    .line 64
    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, ""

    .line 68
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->first(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 69
    new-instance v1, Lcn/codemao/android/account/util/UniqueId$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/codemao/android/account/util/UniqueId$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/util/UniqueId;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcn/codemao/android/account/util/UniqueId;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public release()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method
