.class Lcom/codemao/nemo/activity/CommentDetailActivity$8;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->replyAtComment(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$8;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 521
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$8;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/Unit;
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$8;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1902(Lcom/codemao/nemo/activity/CommentDetailActivity;Z)Z

    const/4 v0, 0x0

    return-object v0
.end method
