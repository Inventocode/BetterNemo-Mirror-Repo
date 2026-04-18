.class Lcom/tencent/connect/share/QzonePublish$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/QzonePublish;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Lcom/tencent/connect/share/QzonePublish;


# direct methods
.method constructor <init>(Lcom/tencent/connect/share/QzonePublish;Lcom/tencent/tauth/IUiListener;)V
    .registers 3

    .line 157
    iput-object p1, p0, Lcom/tencent/connect/share/QzonePublish$2;->b:Lcom/tencent/connect/share/QzonePublish;

    iput-object p2, p0, Lcom/tencent/connect/share/QzonePublish$2;->a:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    const-string p1, "openSDK_LOG.QzonePublish"

    const-string p2, "publishToQzone() mediaplayer onError()"

    .line 160
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/tencent/connect/share/QzonePublish$2;->a:Lcom/tencent/tauth/IUiListener;

    new-instance p2, Lcom/tencent/tauth/UiError;

    const/4 p3, -0x5

    const-string v0, "请选择有效的视频文件"

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const/4 p1, 0x0

    return p1
.end method
