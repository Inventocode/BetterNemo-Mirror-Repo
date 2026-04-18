.class Lcom/codemao/nemo/activity/CommentDetailActivity$1$3;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity$1;->reply(I)V
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
.field final synthetic this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

.field final synthetic val$posion:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity$1;I)V
    .registers 3

    .line 264
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$3;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iput p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$3;->val$posion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 264
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$1$3;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/Unit;
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$3;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    iget v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$3;->val$posion:I

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1102(Lcom/codemao/nemo/activity/CommentDetailActivity;I)I

    const/4 v0, 0x0

    return-object v0
.end method
