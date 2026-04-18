.class public Lcom/qiniu/android/storage/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/storage/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowBackupHost:Z

.field private chunkSize:I

.field private concurrentTaskCount:I

.field private connectTimeout:I

.field private keyGen:Lcom/qiniu/android/storage/KeyGenerator;

.field private proxy:Lcom/qiniu/android/http/ProxyConfiguration;

.field private putThreshold:I

.field private recorder:Lcom/qiniu/android/storage/Recorder;

.field private responseTimeout:I

.field private resumeUploadVersion:I

.field private retryInterval:I

.field private retryMax:I

.field private urlConverter:Lcom/qiniu/android/http/UrlConverter;

.field private useConcurrentResumeUpload:Z

.field private useHttps:Z

.field private zone:Lcom/qiniu/android/common/Zone;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->zone:Lcom/qiniu/android/common/Zone;

    .line 171
    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 172
    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->useHttps:Z

    const/high16 v2, 0x200000

    .line 176
    iput v2, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    const/high16 v2, 0x400000

    .line 177
    iput v2, p0, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I

    const/16 v2, 0x5a

    .line 178
    iput v2, p0, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I

    const/16 v2, 0x3c

    .line 179
    iput v2, p0, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I

    .line 180
    iput v1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I

    const/16 v2, 0x1f4

    .line 181
    iput v2, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryInterval:I

    .line 182
    iput-boolean v1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->allowBackupHost:Z

    .line 183
    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->useConcurrentResumeUpload:Z

    .line 185
    sget v0, Lcom/qiniu/android/storage/Configuration;->RESUME_UPLOAD_VERSION_V1:I

    iput v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->resumeUploadVersion:I

    const/4 v0, 0x3

    .line 186
    iput v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->concurrentTaskCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Z
    .registers 1

    .line 169
    iget-boolean p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->useConcurrentResumeUpload:Z

    return p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->resumeUploadVersion:I

    return p0
.end method

.method static synthetic access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryInterval:I

    return p0
.end method

.method static synthetic access$1100(Lcom/qiniu/android/storage/Configuration$Builder;)Z
    .registers 1

    .line 169
    iget-boolean p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->allowBackupHost:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/ProxyConfiguration;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->proxy:Lcom/qiniu/android/http/ProxyConfiguration;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/qiniu/android/storage/Configuration$Builder;)Z
    .registers 1

    .line 169
    iget-boolean p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->useHttps:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/Zone;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->zone:Lcom/qiniu/android/common/Zone;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->concurrentTaskCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    return p0
.end method

.method static synthetic access$302(Lcom/qiniu/android/storage/Configuration$Builder;I)I
    .registers 2

    .line 169
    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    return p1
.end method

.method static synthetic access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I

    return p0
.end method

.method static synthetic access$500(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I

    return p0
.end method

.method static synthetic access$600(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I

    return p0
.end method

.method static synthetic access$700(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/Recorder;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/KeyGenerator;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I

    return p0
.end method


# virtual methods
.method public build()Lcom/qiniu/android/storage/Configuration;
    .registers 3

    .line 270
    new-instance v0, Lcom/qiniu/android/storage/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qiniu/android/storage/Configuration;-><init>(Lcom/qiniu/android/storage/Configuration$Builder;Lcom/qiniu/android/storage/Configuration$1;)V

    return-object v0
.end method
