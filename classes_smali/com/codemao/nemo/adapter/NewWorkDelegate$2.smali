.class Lcom/codemao/nemo/adapter/NewWorkDelegate$2;
.super Ljava/lang/Object;
.source "NewWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/NewWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Lcom/codemao/nemo/bean/NewWorkDetailInfo;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/NewWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/NewWorkDetailInfo;)V
    .registers 4

    .line 66
    iput-object p2, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/NewWorkDetailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 70
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 71
    :cond_7
    iget-object p1, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/NewWorkDetailInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/NewWorkDetailInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getUser_id()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/NewWorkDetailInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getWork_id()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "新作喵喵看页"

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
