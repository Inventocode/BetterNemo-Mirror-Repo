.class Lcom/codemao/nemo/fragment/LatestFragmentV2$3;
.super Ljava/lang/Object;
.source "LatestFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV2;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toUserDetail(Ljava/lang/String;JJ)V
    .registers 15

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$300(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_29

    .line 154
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "再创作作品"

    const-string v8, ""

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v2 .. v8}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 155
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$300(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_51

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "模版作品"

    const-string v8, ""

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v2 .. v8}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 157
    :cond_51
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$300(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_78

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "课程作品"

    const-string v8, ""

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v2 .. v8}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void
.end method

.method public toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;I)V
    .registers 12

    .line 139
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$200(Lcom/codemao/nemo/fragment/LatestFragmentV2;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 142
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$300(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result p1

    if-nez p1, :cond_21

    .line 143
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "再创作作品"

    const-string v5, ""

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 144
    :cond_21
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$300(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result p1

    const/4 p5, 0x1

    if-ne p1, p5, :cond_3a

    .line 145
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "模版作品"

    const-string v5, ""

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 146
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$300(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result p1

    const/4 p5, 0x2

    if-ne p1, p5, :cond_52

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "课程作品"

    const-string v5, ""

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    :goto_52
    return-void
.end method
