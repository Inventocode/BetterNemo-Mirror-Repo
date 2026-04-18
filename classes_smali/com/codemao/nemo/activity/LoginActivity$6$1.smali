.class Lcom/codemao/nemo/activity/LoginActivity$6$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity$6;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LoginActivity$6;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity$6;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$6$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 378
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$6$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$6;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LoginActivity$6;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 p1, 0x1

    return p1
.end method
