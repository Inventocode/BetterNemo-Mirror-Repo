.class public Lcom/codemao/nemo/dialog/pop/CommentInputPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "CommentInputPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private currentExpId:I

.field etInput:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private expAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private expAdapterInput:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private expressionChooseItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;"
        }
    .end annotation
.end field

.field private expressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionItem;",
            ">;"
        }
    .end annotation
.end field

.field fl_aduan:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field fl_codemao:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field fl_leidianhou:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field fl_msmao:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field fl_xingnengmao:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private hint:Ljava/lang/String;

.field private isShowEmoj:Z

.field ivExp:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivKeyBoad:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field iv_header:Lcom/codemao/nemo/view/RoundStrokeImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field iv_tag:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llIndicator:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ll_author:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onStatusChangeListner:Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;

.field rlBottom:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlExp:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlInput:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlRoot:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvExp:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvExpInput:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private sendListener:Landroid/view/View$OnClickListener;

.field private show:Z

.field public spannedString:Landroid/text/SpannableStringBuilder;

.field tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSend:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSendExp:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_name:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_unable:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I

.field vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private workId:J

.field private workType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .registers 5

    .line 156
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->isShowEmoj:Z

    const p1, 0x7f0a027e

    .line 149
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 158
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 161
    :cond_23
    iput-wide p2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->workId:J

    .line 162
    iput-object p4, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->workType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->onStatusChangeListner:Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapterInput:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->checkIsEmpty()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Landroid/content/Context;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->workId:J

    return-wide v0
.end method

.method private changeExp()V
    .registers 14

    .line 632
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_codemao:Landroid/view/View;

    iget v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0a027e

    if-ne v1, v4, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 633
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_msmao:Landroid/view/View;

    iget v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v4, 0x7f0a028e

    if-ne v1, v4, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 634
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_aduan:Landroid/view/View;

    iget v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v5, 0x7f0a0279

    if-ne v1, v5, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 635
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_xingnengmao:Landroid/view/View;

    iget v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v6, 0x7f0a029c

    if-ne v1, v6, :cond_3a

    const/4 v1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 636
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_leidianhou:Landroid/view/View;

    iget v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v6, 0x7f0a028b

    if-ne v1, v6, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 637
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 638
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 639
    iget v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    sparse-switch v0, :sswitch_data_1e4

    goto :goto_a4

    .line 647
    :sswitch_5f
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    invoke-static {}, Lcom/codemao/nemo/util/ExpressionUtil;->getInstance()Lcom/codemao/nemo/util/ExpressionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ExpressionUtil;->getXnmExp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a4

    .line 644
    :sswitch_6d
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    invoke-static {}, Lcom/codemao/nemo/util/ExpressionUtil;->getInstance()Lcom/codemao/nemo/util/ExpressionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ExpressionUtil;->getMsMaoExp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a4

    .line 650
    :sswitch_7b
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    invoke-static {}, Lcom/codemao/nemo/util/ExpressionUtil;->getInstance()Lcom/codemao/nemo/util/ExpressionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ExpressionUtil;->getLdhExp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a4

    .line 641
    :sswitch_89
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    invoke-static {}, Lcom/codemao/nemo/util/ExpressionUtil;->getInstance()Lcom/codemao/nemo/util/ExpressionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ExpressionUtil;->getCodemaoExp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a4

    .line 653
    :sswitch_97
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    invoke-static {}, Lcom/codemao/nemo/util/ExpressionUtil;->getInstance()Lcom/codemao/nemo/util/ExpressionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ExpressionUtil;->getAduanExp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 656
    :goto_a4
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 657
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v6, 0x40e00000  # 7.0f

    invoke-static {v0, v6}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    const/4 v6, 0x0

    .line 658
    :goto_b4
    iget-object v7, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_ed

    .line 659
    new-instance v7, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 660
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v6, :cond_d9

    .line 662
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x41200000  # 10.0f

    invoke-static {v9, v10}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_dc

    .line 664
    :cond_d9
    invoke-virtual {v7, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_dc
    const v9, 0x7f080608

    .line 666
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 667
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    iget-object v8, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b4

    .line 672
    :cond_ed
    new-instance v0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    new-instance v12, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;

    invoke-direct {v12, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;)V

    .line 684
    iget-object v6, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 685
    iget-object v6, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;

    invoke-virtual {v6, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 688
    iget v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-ne v0, v5, :cond_180

    .line 689
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isOffical()Z

    move-result v0

    if-nez v0, :cond_122

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserConsumLevel()I

    move-result v0

    const/4 v5, 0x3

    if-lt v0, v5, :cond_120

    goto :goto_122

    :cond_120
    const/4 v0, 0x0

    goto :goto_123

    :cond_122
    :goto_122
    const/4 v0, 0x1

    .line 690
    :goto_123
    iget-object v5, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;

    if-eqz v0, :cond_128

    goto :goto_12a

    :cond_128
    const/high16 v1, 0x3f000000  # 0.5f

    :goto_12a
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 691
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 692
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_138

    const/4 v5, 0x0

    goto :goto_139

    :cond_138
    const/4 v5, 0x4

    :goto_139
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tv_unable:Landroid/widget/TextView;

    if-eqz v0, :cond_143

    const/16 v5, 0x8

    goto :goto_144

    :cond_143
    const/4 v5, 0x0

    :goto_144
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->iv_tag:Landroid/view/View;

    if-eqz v0, :cond_14d

    const/4 v0, 0x4

    goto :goto_14e

    :cond_14d
    const/4 v0, 0x0

    :goto_14e
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->spannedString:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_194

    .line 696
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "银牌玩家专属表情，快来查看升级秘籍吧"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->spannedString:Landroid/text/SpannableStringBuilder;

    .line 697
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#FF786EC6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 698
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->spannedString:Landroid/text/SpannableStringBuilder;

    const/16 v5, 0xd

    const/16 v8, 0x11

    const/16 v9, 0x22

    invoke-virtual {v1, v0, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 699
    new-instance v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$11;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$11;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    .line 710
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->spannedString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_194

    .line 714
    :cond_180
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 715
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->iv_tag:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tv_unable:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 721
    :cond_194
    :goto_194
    iget v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    if-ne v0, v4, :cond_1ca

    .line 722
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ll_author:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 724
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getAduanAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->iv_header:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 725
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tv_unable:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 726
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tv_unable:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->spannedString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tv_name:Landroid/widget/TextView;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getAduanName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tv_name:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CommentInputPop$12;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$12;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1cf

    .line 735
    :cond_1ca
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ll_author:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 738
    :goto_1cf
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressionChooseItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_1dd

    .line 739
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1e2

    .line 741
    :cond_1dd
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1e2
    return-void

    nop

    :sswitch_data_1e4
    .sparse-switch
        0x7f0a0279 -> :sswitch_97
        0x7f0a027e -> :sswitch_89
        0x7f0a028b -> :sswitch_7b
        0x7f0a028e -> :sswitch_6d
        0x7f0a029c -> :sswitch_5f
    .end sparse-switch
.end method

.method private checkIsEmpty()V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4d

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSendExp:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSendExp:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7d

    .line 289
    :cond_4d
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSendExp:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSendExp:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7d
    return-void
.end method

.method private initView()V
    .registers 9

    .line 297
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 298
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->sendListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1a

    .line 299
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSendExp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->sendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_26

    .line 302
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSendExp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->sendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    :goto_26
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 308
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 310
    :cond_47
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CommentInputPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$1;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 328
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_aduan:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_msmao:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_codemao:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_leidianhou:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_xingnengmao:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    .line 334
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 335
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 336
    iget-object v2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 337
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 339
    iget-object v2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 340
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    .line 341
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    .line 342
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->changeExp()V

    .line 343
    new-instance v3, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 344
    new-instance v4, Lcom/codemao/nemo/adapter/ExpressionDelegate;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    if-le v2, v0, :cond_b7

    mul-int/lit8 v6, v0, 0x10

    goto :goto_b9

    :cond_b7
    mul-int/lit8 v6, v2, 0x10

    :goto_b9
    div-int/lit8 v6, v6, 0x7d

    new-instance v7, Lcom/codemao/nemo/dialog/pop/CommentInputPop$2;

    invoke-direct {v7, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$2;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/codemao/nemo/adapter/ExpressionDelegate;-><init>(Landroid/content/Context;ILcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;)V

    invoke-virtual {v3, v4}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 357
    iget-object v3, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 358
    new-instance v3, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapterInput:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 359
    new-instance v4, Lcom/codemao/nemo/adapter/ExpressionDelegate;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    if-le v2, v0, :cond_e7

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x7d

    goto :goto_eb

    :cond_e7
    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v0, v2, 0x7d

    :goto_eb
    new-instance v2, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-direct {v4, v5, v0, v2}, Lcom/codemao/nemo/adapter/ExpressionDelegate;-><init>(Landroid/content/Context;ILcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;)V

    invoke-virtual {v3, v4}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 373
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapterInput:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 374
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_110

    .line 375
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 377
    :cond_110
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 380
    :cond_123
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/codemao/nemo/dialog/pop/CommentInputPop$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$4;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 416
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v3, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 453
    iget-object v3, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 454
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 455
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlRoot:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/codemao/nemo/dialog/pop/CommentInputPop$6;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$6;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_171

    .line 465
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ivExp:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 468
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapterInput:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 469
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_176

    .line 472
    :cond_171
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ivExp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    :goto_176
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    new-instance v2, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 508
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;

    new-instance v2, Lcom/codemao/nemo/dialog/pop/CommentInputPop$8;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$8;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 527
    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 528
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 530
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public clearEmoji()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapterInput:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 747
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->show:Z

    if-eqz v0, :cond_c

    .line 748
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 749
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_c
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 2

    .line 586
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 587
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    .line 200
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public getEmojiContent()Ljava/lang/String;
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 216
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/ExpressionItem;

    .line 218
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ExpressionItem;->getExpString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 221
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 224
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d02d4

    return v0
.end method

.method public getType()I
    .registers 2

    .line 252
    iget v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->type:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 593
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_4c

    .line 625
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->dismiss()V

    goto :goto_4b

    .line 613
    :sswitch_b
    iget p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v0, 0x7f0a029c

    if-eq p1, v0, :cond_4b

    .line 614
    iput v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    .line 615
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->changeExp()V

    goto :goto_4b

    .line 601
    :sswitch_18
    iget p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v0, 0x7f0a028e

    if-eq p1, v0, :cond_4b

    .line 602
    iput v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    .line 603
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->changeExp()V

    goto :goto_4b

    .line 619
    :sswitch_25
    iget p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v0, 0x7f0a028b

    if-eq p1, v0, :cond_4b

    .line 620
    iput v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    .line 621
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->changeExp()V

    goto :goto_4b

    .line 595
    :sswitch_32
    iget p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v0, 0x7f0a027e

    if-eq p1, v0, :cond_4b

    .line 596
    iput v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    .line 597
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->changeExp()V

    goto :goto_4b

    .line 607
    :sswitch_3f
    iget p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    const v0, 0x7f0a0279

    if-eq p1, v0, :cond_4b

    .line 608
    iput v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->currentExpId:I

    .line 609
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->changeExp()V

    :cond_4b
    :goto_4b
    return-void

    :sswitch_data_4c
    .sparse-switch
        0x7f0a0279 -> :sswitch_3f
        0x7f0a027e -> :sswitch_32
        0x7f0a028b -> :sswitch_25
        0x7f0a028e -> :sswitch_18
        0x7f0a029c -> :sswitch_b
    .end sparse-switch
.end method

.method protected onCreate()V
    .registers 1

    .line 187
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 188
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 189
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->initView()V

    return-void
.end method

.method protected onDismiss()V
    .registers 3

    .line 755
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    .line 756
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 757
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 758
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlInput:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlExp:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->onStatusChangeListner:Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;

    if-eqz v0, :cond_35

    .line 765
    invoke-interface {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;->onDismiss()V

    :cond_35
    return-void
.end method

.method public onGetSoftInputHeight(Lcom/codemao/nemo/event/SoftInputHeightEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 772
    invoke-virtual {p1}, Lcom/codemao/nemo/event/SoftInputHeightEvent;->getSoftHeight()I

    move-result p1

    .line 773
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 774
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 775
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onShow()V
    .registers 2

    .line 171
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 172
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->show:Z

    .line 175
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    .line 176
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->checkIsEmpty()V

    .line 177
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->isShowEmoj:Z

    if-eqz v0, :cond_22

    .line 178
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->showExpView()V

    goto :goto_25

    .line 180
    :cond_22
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->showKeyBoard()V

    :goto_25
    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_16

    .line 229
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 234
    :cond_16
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    .line 240
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 242
    :cond_7
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->hint:Ljava/lang/String;

    return-object p0
.end method

.method public setIsShowEmoj(Z)Lcom/codemao/nemo/dialog/pop/CommentInputPop;
    .registers 2

    .line 247
    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->isShowEmoj:Z

    return-object p0
.end method

.method public setOnStatusChangeListner(Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->onStatusChangeListner:Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;

    return-void
.end method

.method public setSendListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->sendListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setType(I)Lcom/codemao/nemo/dialog/pop/CommentInputPop;
    .registers 3

    .line 256
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_32

    .line 258
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ivExp:Landroid/widget/ImageView;

    const/16 v0, 0x8

    if-eqz p1, :cond_e

    .line 259
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    :cond_e
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    if-eqz p1, :cond_15

    .line 262
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 263
    :cond_15
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    if-eqz p1, :cond_1c

    .line 264
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 265
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expAdapterInput:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    if-eqz p1, :cond_23

    .line 266
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 268
    :cond_23
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2a

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3a

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3a

    .line 273
    :cond_32
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ivExp:Landroid/widget/ImageView;

    if-eqz p1, :cond_3a

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3a
    :goto_3a
    return-object p0
.end method

.method showExpView()V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v4, "一级"

    aput-object v4, v0, v1

    const-string/jumbo v1, "作品详情页-点击表情icon"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->workId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v5, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->workType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCommentType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 537
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 538
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 540
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 541
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_ac

    .line 544
    :cond_8d
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 545
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :goto_ac
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method showKeyBoard()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlExp:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlInput:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 570
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSaveFromParentEnabled(Z)V

    .line 571
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 572
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 573
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    .line 574
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->expressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 575
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_49

    .line 578
    :cond_3f
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_49
    return-void
.end method
