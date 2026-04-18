.class public Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;
.super Ljava/lang/Object;
.source "UMSLEnvelopeBuild.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UMSLEnvelopeBuild"

.field private static isEncryptEnabled:Z

.field public static mContext:Landroid/content/Context;

.field public static module:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isReadyBuildNew(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static setEncryptEnabled(Z)V
    .registers 1

    .line 67
    sput-boolean p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->isEncryptEnabled:Z

    return-void
.end method


# virtual methods
.method public buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .line 30
    new-instance v0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;-><init>(Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string p1, "UMLog"

    const-string v0, "基础组件库9.3.x版本仅支持6.2.0及更高版本推送SDK、7.1.0及更高版本分享SDK。"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public buildSLEnvelope(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method
