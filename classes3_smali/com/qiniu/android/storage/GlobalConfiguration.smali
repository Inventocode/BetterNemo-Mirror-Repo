.class public Lcom/qiniu/android/storage/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"


# static fields
.field public static appContext:Landroid/content/Context;

.field private static configuration:Lcom/qiniu/android/storage/GlobalConfiguration;


# instance fields
.field public connectCheckEnable:Z

.field public connectCheckTimeout:I

.field public connectCheckURLStrings:[Ljava/lang/String;

.field public dns:Lcom/qiniu/android/http/dns/Dns;

.field public dnsCacheDir:Ljava/lang/String;

.field public dnsCacheMaxTTL:I

.field public dnsCacheTime:I

.field public dnsRepreHostNum:I

.field public dnsResolveTimeout:I

.field public globalHostFrozenTime:I

.field public isDnsOpen:Z

.field public partialHostFrozenTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lcom/qiniu/android/storage/GlobalConfiguration;

    invoke-direct {v0}, Lcom/qiniu/android/storage/GlobalConfiguration;-><init>()V

    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->configuration:Lcom/qiniu/android/storage/GlobalConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->isDnsOpen:Z

    const/4 v1, 0x2

    .line 23
    iput v1, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsRepreHostNum:I

    const/16 v2, 0x78

    .line 29
    iput v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheTime:I

    const/16 v2, 0x258

    .line 35
    iput v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheMaxTTL:I

    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dns:Lcom/qiniu/android/http/dns/Dns;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/dnsCache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheDir:Ljava/lang/String;

    const/16 v2, 0xa

    .line 53
    iput v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->globalHostFrozenTime:I

    const/16 v2, 0x12c

    .line 59
    iput v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->partialHostFrozenTime:I

    .line 65
    iput v1, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsResolveTimeout:I

    const-string v1, "https://www.qiniu.com"

    const-string v2, "https://www.baidu.com"

    const-string v3, "https://www.google.com"

    .line 72
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckURLStrings:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 77
    iput v1, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckTimeout:I

    .line 82
    iput-boolean v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckEnable:Z

    return-void
.end method

.method public static getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;
    .registers 1

    .line 90
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->configuration:Lcom/qiniu/android/storage/GlobalConfiguration;

    return-object v0
.end method
