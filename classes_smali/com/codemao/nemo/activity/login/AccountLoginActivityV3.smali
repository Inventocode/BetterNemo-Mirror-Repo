.class public final Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;
.super Lcom/giu/xzz/BaseActivity;
.source "AccountLoginActivityV3.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private isVisitor:Z

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$3HPZKO4facj4bRTDf83xermkZOg(Landroid/widget/TextView;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->initGetCaptcha$lambda$2(Landroid/widget/TextView;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RroihKWtN6SN7Jukm7oWN7E9U6E(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->onCreate$lambda$0(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lzAMicr8qnT__CjZegmKpgs2dE0(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->onCreate$lambda$1(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 110
    iput v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->type:I

    return-void
.end method

.method private final initAction(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V
    .registers 4

    if-eqz p1, :cond_95

    .line 211
    sget v0, Lcom/codemao/nemo/R$id;->titleTextView:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setTitleTextView(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 212
    sget v0, Lcom/codemao/nemo/R$id;->firstLoginInputLayout:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoginInputLayout;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setFirstLoginLayout(Lcom/codemao/nemo/view/LoginInputLayout;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 213
    sget v0, Lcom/codemao/nemo/R$id;->secondLoginInputLayout:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoginInputLayout;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setSecondLoginLayout(Lcom/codemao/nemo/view/LoginInputLayout;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 214
    sget v0, Lcom/codemao/nemo/R$id;->bottomLeftTextView:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setBottomLeftTextView(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 215
    sget v0, Lcom/codemao/nemo/R$id;->bottomMiddleTextView:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setBottomMiddleTextView(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 216
    sget v0, Lcom/codemao/nemo/R$id;->bottomRightTextView:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setBottomRightTextView(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 217
    sget v0, Lcom/codemao/nemo/R$id;->confirmBtn:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setConfirmBtn(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 218
    sget v0, Lcom/codemao/nemo/R$id;->ivIcon:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "ivIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setBackImageV(Landroid/widget/ImageView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 219
    invoke-virtual {p1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setContext(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 220
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->isVisitor:Z

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setIsVisitor(Z)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 221
    iget-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    const-string v1, "viewName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->setViewName(Ljava/lang/String;)Lcom/codemao/nemo/activity/login/AccountLoginAction;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 222
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onInit()V

    :cond_95
    return-void
.end method

.method private final initGetCaptcha()V
    .registers 4

    .line 182
    sget v0, Lcom/codemao/nemo/R$id;->secondLoginInputLayout:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoginInputLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getTextViewOfConfirm()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    new-instance v1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;-><init>(Landroid/widget/TextView;)V

    .line 197
    new-instance v2, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initGetCaptcha$lambda$2(Landroid/widget/TextView;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V
    .registers 4

    const-string p3, "$textViewOfConfirm"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$mCountDownTimer"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 198
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 199
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 200
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 201
    iget-object p2, p2, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    if-eqz p2, :cond_27

    new-instance p3, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;

    invoke-direct {p3, p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;-><init>(Landroid/widget/TextView;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;)V

    invoke-virtual {p2, p3}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onGetCaptchaClick(Lkotlin/jvm/functions/Function0;)V

    :cond_27
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V
    .registers 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->isVisitor:Z

    if-eqz v1, :cond_41

    const-string v1, "0"

    goto :goto_43

    :cond_41
    const-string v1, "1"

    :goto_43
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    .line 167
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->onBackPressed()V

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onConfirmClick()V

    :cond_c
    return-void
.end method

.method public static final startActivity(Landroid/content/Context;IZ)V
    .registers 4

    sget-object v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startActivity(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static final startActivity(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    sget-object v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startActivity(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final startActivity(Landroid/content/Context;IZZZ)V
    .registers 11

    sget-object v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startActivity(Landroid/content/Context;IZZZ)V

    return-void
.end method

.method public static final startBindFromMain(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startBindFromMain(Landroid/content/Context;)V

    return-void
.end method

.method public static final startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V
    .registers 4

    sget-object v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public final changePageAction(Lcom/codemao/nemo/activity/login/AccountLoginAction;Ljava/lang/String;)V
    .registers 4

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p2, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    .line 227
    sget p2, Lcom/codemao/nemo/R$id;->firstLoginInputLayout:I

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/LoginInputLayout;

    const-string v0, ""

    if-eqz p2, :cond_1b

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setText(Ljava/lang/String;)V

    .line 228
    :cond_1b
    sget p2, Lcom/codemao/nemo/R$id;->secondLoginInputLayout:I

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/LoginInputLayout;

    if-eqz p2, :cond_28

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setText(Ljava/lang/String;)V

    .line 229
    :cond_28
    iget-object p2, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onDestroy()V

    .line 230
    :cond_2f
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    .line 231
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->initAction(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0031

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "账号登录页"

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onBackPressed()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_f

    .line 248
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->type:I

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isVisitor"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->isVisitor:Z

    .line 128
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->isVisitor:Z

    if-eqz v1, :cond_25

    const-string v1, "0"

    goto :goto_27

    :cond_25
    const-string v1, "1"

    :goto_27
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewExtraInfo(Ljava/util/Map;)V

    .line 130
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    sget p1, Lcom/codemao/nemo/R$id;->backgroundImageV:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 132
    invoke-static {p0}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_47

    const v0, 0x7f0e0010

    goto :goto_4a

    :cond_47
    const v0, 0x7f0e000f

    .line 131
    :goto_4a
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->type:I

    if-eq p1, v2, :cond_ed

    const/4 v0, 0x2

    if-eq p1, v0, :cond_ca

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_83

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5f

    goto/16 :goto_10f

    .line 158
    :cond_5f
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:重置密码页,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const-string/jumbo p1, "重置密码页"

    .line 159
    iput-object p1, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    .line 160
    new-instance p1, Lcom/codemao/nemo/activity/login/FindPswAction;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/activity/login/FindPswAction;-><init>(Z)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    goto/16 :goto_10f

    .line 153
    :cond_83
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:忘记密码页,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const-string/jumbo p1, "忘记密码页"

    .line 154
    iput-object p1, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    .line 155
    new-instance p1, Lcom/codemao/nemo/activity/login/FindPswAction;

    const/4 v0, 0x0

    invoke-direct {p1, v3, v2, v0}, Lcom/codemao/nemo/activity/login/FindPswAction;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    goto :goto_10f

    .line 148
    :cond_a7
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:手机绑定页,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const-string/jumbo p1, "手机绑定页"

    .line 149
    iput-object p1, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    .line 150
    new-instance p1, Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-direct {p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    goto :goto_10f

    .line 143
    :cond_ca
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:新用户注册页,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const-string/jumbo p1, "新用户注册页"

    .line 144
    iput-object p1, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    .line 145
    new-instance p1, Lcom/codemao/nemo/activity/login/RegisterAction;

    invoke-direct {p1}, Lcom/codemao/nemo/activity/login/RegisterAction;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    goto :goto_10f

    .line 138
    :cond_ed
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:账号登录页,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const-string/jumbo p1, "账号登录页"

    .line 139
    iput-object p1, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    .line 140
    new-instance p1, Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-direct {p1}, Lcom/codemao/nemo/activity/login/LoginAction;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    .line 165
    :goto_10f
    sget p1, Lcom/codemao/nemo/R$id;->ivIcon:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->initAction(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V

    .line 175
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->initGetCaptcha()V

    .line 176
    sget p1, Lcom/codemao/nemo/R$id;->confirmBtn:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->pageAction:Lcom/codemao/nemo/activity/login/AccountLoginAction;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onDestroy()V

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    .line 243
    :cond_15
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method
