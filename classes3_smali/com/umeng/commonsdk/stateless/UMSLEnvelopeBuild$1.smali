.class Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;
.super Ljava/lang/Thread;
.source "UMSLEnvelopeBuild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;Landroid/content/Context;)V
    .registers 3

    .line 30
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;->b:Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;

    iput-object p2, p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 34
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 35
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "基础组件库9.3.x版本仅支持6.2.0及更高版本推送SDK、7.1.0及更高版本分享SDK。"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_16

    :catchall_16
    return-void
.end method
