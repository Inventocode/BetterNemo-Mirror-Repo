.class public Lcom/codemao/nemo/dialog/pop/GoAgreementPop;
.super Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.source "GoAgreementPop.java"


# instance fields
.field private contentType:I

.field ivClose:Landroid/widget/ImageView;

.field private reportParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rightClickListener:Landroid/view/View$OnClickListener;

.field tvConfirm:Landroid/widget/TextView;

.field tvContent:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$WQUF--Vf06hmP7_NuS1sYxrhXro(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->contentType:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->type:I

    .line 56
    iput p2, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->type:I

    .line 57
    iput p3, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->contentType:I

    .line 58
    iput-object p4, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->reportParams:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->rightClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;Ljava/lang/String;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->sendReport(Ljava/lang/String;)V

    return-void
.end method

.method private isLandMode()Z
    .registers 3

    .line 71
    iget v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    const-string/jumbo p1, "点击关闭前往协议弹窗"

    .line 83
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->sendReport(Ljava/lang/String;)V

    .line 84
    iget p1, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->type:I

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->showToastForType(I)V

    return-void
.end method

.method private sendReport(Ljava/lang/String;)V
    .registers 6

    .line 151
    iget v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->type:I

    const/4 v1, 0x0

    const-string/jumbo v2, "我的-"

    const-string/jumbo v3, "创作页-"

    packed-switch v0, :pswitch_data_fa

    goto/16 :goto_f9

    .line 170
    :pswitch_e  #0x8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "顶部栏"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_f9

    .line 166
    :pswitch_47  #0x7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "竖屏运行"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_f9

    .line 174
    :pswitch_80  #0x6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "横屏运行"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_f9

    .line 160
    :pswitch_b8  #0x3, 0x4, 0x5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "作品详情页-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->reportParams:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_f9

    .line 163
    :pswitch_d0  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_f9

    .line 155
    :pswitch_e5  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_f9
    return-void

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_e5  #00000001
        :pswitch_d0  #00000002
        :pswitch_b8  #00000003
        :pswitch_b8  #00000004
        :pswitch_b8  #00000005
        :pswitch_80  #00000006
        :pswitch_47  #00000007
        :pswitch_e  #00000008
    .end packed-switch
.end method

.method private setContent()V
    .registers 9

    .line 112
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 113
    iget v1, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->contentType:I

    const/4 v2, 0x1

    const-string/jumbo v3, "绑定手机号"

    const-string/jumbo v4, "哦！"

    const/16 v5, 0x21

    const v6, 0x7f06015e

    if-eq v1, v2, :cond_95

    const/4 v2, 0x2

    const-string v7, "《社区友爱契约》"

    if-eq v1, v2, :cond_70

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1f

    goto/16 :goto_b9

    :cond_1f
    const-string/jumbo v1, "喵~发布评论及作品之前，需要先"

    .line 131
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 132
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 133
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 135
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->isLandMode()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "\n"

    .line 136
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4b
    const-string/jumbo v1, "并且与魔术喵签订"

    .line 138
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 139
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 140
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 142
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_b9

    :cond_70
    const-string/jumbo v1, "喵~发布评论及作品之前\n需要先与魔术喵签订\n"

    .line 115
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 118
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 119
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 120
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_b9

    :cond_95
    const-string/jumbo v1, "喵~发布评论及作品之前\n需要先"

    .line 123
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 125
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 126
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 127
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 128
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    :goto_b9
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showToastForType(I)V
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    .line 99
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p0

    const-string/jumbo v0, "完善信息后才能更新作品"

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_48

    :cond_e
    const/4 v0, 0x4

    if-eq p0, v0, :cond_3e

    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    goto :goto_3e

    :cond_15
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 103
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p0

    const-string/jumbo v0, "完善信息后才能更新信息"

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_48

    :cond_23
    const/4 v0, 0x2

    if-ne p0, v0, :cond_31

    .line 105
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p0

    const-string/jumbo v0, "未签订协议，无法发布作品"

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_48

    :cond_31
    if-eqz p0, :cond_48

    .line 107
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p0

    const-string/jumbo v0, "完善信息后才能发布作品"

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 101
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p0

    const-string/jumbo v0, "完善信息后才能发布评论"

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_48
    :goto_48
    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->isLandMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d02d9

    goto :goto_d

    :cond_a
    const v0, 0x7f0d02d8

    :goto_d
    return v0
.end method

.method protected onCreate()V
    .registers 3

    .line 76
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0a0821

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->tvConfirm:Landroid/widget/TextView;

    const v0, 0x7f0a037b

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->ivClose:Landroid/widget/ImageView;

    const v0, 0x7f0a0190

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->tvContent:Landroid/widget/TextView;

    .line 80
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->setContent()V

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/GoAgreementPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/GoAgreementPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop$1;-><init>(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/pop/GoAgreementPop;
    .registers 3

    .line 181
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->rightClickListener:Landroid/view/View$OnClickListener;

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 183
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method
