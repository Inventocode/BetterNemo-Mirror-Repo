.class Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;
.super Ljava/lang/Object;
.source "WorkCommentDetailDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->setUserLevelInfo(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

.field final synthetic val$authorLevel:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)V
    .registers 3

    .line 292
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;->val$authorLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 295
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$400(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$300(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击评论区徽章"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;->val$authorLevel:I

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$200(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelDetail(ILandroid/content/Context;)V

    return-void
.end method
