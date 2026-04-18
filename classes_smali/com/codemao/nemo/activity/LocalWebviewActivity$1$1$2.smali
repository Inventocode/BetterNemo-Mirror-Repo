.class Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;
.super Ljava/lang/Object;
.source "LocalWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$100(Lcom/codemao/nemo/activity/LocalWebviewActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_37

    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$100(Lcom/codemao/nemo/activity/LocalWebviewActivity;)I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1b

    goto :goto_37

    .line 163
    :cond_1b
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->finish()V

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivLast:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2$1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_49

    .line 160
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goPublishPageNew()V

    .line 161
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->finish()V

    :goto_49
    return-void
.end method
