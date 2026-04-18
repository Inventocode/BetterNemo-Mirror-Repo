.class Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;
.super Ljava/lang/Object;
.source "ThemeDetailBottomDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/SubjectWorkInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;Lcom/codemao/nemo/bean/SubjectWorkInfo;)V
    .registers 3

    .line 106
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;->val$data:Lcom/codemao/nemo/bean/SubjectWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->access$100(Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;->val$data:Lcom/codemao/nemo/bean/SubjectWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;->val$data:Lcom/codemao/nemo/bean/SubjectWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getUser_id()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;->val$data:Lcom/codemao/nemo/bean/SubjectWorkInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->access$000(Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "主题页"

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
