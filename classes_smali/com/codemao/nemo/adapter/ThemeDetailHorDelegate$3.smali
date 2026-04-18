.class Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;
.super Ljava/lang/Object;
.source "ThemeDetailHorDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/SubjectInfo;

.field final synthetic val$datas:Ljava/util/List;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Lcom/codemao/nemo/bean/SubjectInfo;ILjava/util/List;)V
    .registers 5

    .line 143
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$data:Lcom/codemao/nemo/bean/SubjectInfo;

    iput p3, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$position:I

    iput-object p4, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$datas:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 147
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-nez p1, :cond_98

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$data:Lcom/codemao/nemo/bean/SubjectInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/SubjectInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$position:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "主题页-点击更多按钮"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$data:Lcom/codemao/nemo/bean/SubjectInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/SubjectInfo;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setThemeId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$position:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setThemeRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->access$200(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$data:Lcom/codemao/nemo/bean/SubjectInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getId()I

    move-result v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$data:Lcom/codemao/nemo/bean/SubjectInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_name()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    iget-object v3, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;->val$datas:Ljava/util/List;

    invoke-static {p1, v3}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->access$300(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v3, "主题页"

    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->goThemeDetail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_98
    return-void
.end method
