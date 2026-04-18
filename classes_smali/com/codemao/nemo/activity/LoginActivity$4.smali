.class Lcom/codemao/nemo/activity/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->showFirstAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$4;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 342
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$4;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$300(Lcom/codemao/nemo/activity/LoginActivity;)V

    return-void
.end method
