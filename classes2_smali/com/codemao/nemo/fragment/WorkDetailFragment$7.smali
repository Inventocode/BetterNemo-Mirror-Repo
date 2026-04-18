.class Lcom/codemao/nemo/fragment/WorkDetailFragment$7;
.super Ljava/lang/Object;
.source "WorkDetailFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->updateThemeTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagClick(Landroid/view/View;ILcom/codemao/nemo/view/flowlayout/FlowLayout;)Z
    .registers 13

    .line 445
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_10e

    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$600(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_11

    goto/16 :goto_10e

    .line 447
    :cond_11
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$600(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;

    .line 448
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getTheme_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkTag(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setTagRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string v1, "作品详情页-点击标签按钮"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 449
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getLabel_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_110

    :goto_66
    const/4 p3, -0x1

    goto :goto_87

    :sswitch_68
    const-string p3, "NEW_RECOMMEND_WORK"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_71

    goto :goto_66

    :cond_71
    const/4 p3, 0x2

    goto :goto_87

    :sswitch_73
    const-string p3, "USER_COURSE_WORK"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7c

    goto :goto_66

    :cond_7c
    const/4 p3, 0x1

    goto :goto_87

    :sswitch_7e
    const-string v3, "OFFICIAL_COURSE_WORK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_66

    :cond_87
    :goto_87
    const-string v0, "作品详情页"

    packed-switch p3, :pswitch_data_11e

    .line 460
    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getLabel_id()I

    move-result v4

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getLabel_name()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v6, "作品详情页"

    invoke-static/range {v3 .. v8}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->goThemeDetail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_10d

    .line 457
    :pswitch_ba  #0x2
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    const-string p3, "新作喵喵看"

    invoke-static {p1, p2, p3, v0}, Lcom/codemao/nemo/activity/CmDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10d

    .line 451
    :pswitch_c8  #0x1
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/codemao/nemo/activity/CourseDetailActivity;->startFolkCourseAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10d

    .line 454
    :pswitch_eb  #0x0
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/codemao/nemo/activity/CourseDetailActivity;->startOfficialCourseAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_10d
    return v2

    :cond_10e
    :goto_10e
    return p3

    nop

    :sswitch_data_110
    .sparse-switch
        -0x5f1e229f -> :sswitch_7e
        -0x599d19bf -> :sswitch_73
        -0x1a68168d -> :sswitch_68
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_eb  #00000000
        :pswitch_c8  #00000001
        :pswitch_ba  #00000002
    .end packed-switch
.end method
