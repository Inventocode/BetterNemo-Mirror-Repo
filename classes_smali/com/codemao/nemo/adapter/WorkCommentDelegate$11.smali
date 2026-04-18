.class Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;
.super Ljava/lang/Object;
.source "WorkCommentDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkCommentDelegate;->setUserLevelInfo(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

.field final synthetic val$authorLevel:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;I)V
    .registers 3

    .line 260
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;->val$authorLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 263
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$200(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$100(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击评论区徽章"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;->val$authorLevel:I

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$300(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelDetail(ILandroid/content/Context;)V

    return-void
.end method
