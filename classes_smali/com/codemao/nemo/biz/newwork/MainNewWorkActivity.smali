.class public final Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;
.super Lcom/ljwx/baseactivity/BaseBindingPadActivity;
.source "MainNewWorkActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseactivity/BaseBindingPadActivity<",
        "Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;",
        "Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainNewWorkActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainNewWorkActivity.kt\ncom/codemao/nemo/biz/newwork/MainNewWorkActivity\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,179:1\n15#2,7:180\n15#2,7:187\n13543#3,2:194\n*S KotlinDebug\n*F\n+ 1 MainNewWorkActivity.kt\ncom/codemao/nemo/biz/newwork/MainNewWorkActivity\n*L\n46#1:180,7\n49#1:187,7\n64#1:194,2\n*E\n"
.end annotation


# instance fields
.field private final animaDuration:J

.field private final close$delegate:Lkotlin/Lazy;

.field private firstChange:Z

.field private final rootLayout$delegate:Lkotlin/Lazy;

.field private final tabLayout$delegate:Lkotlin/Lazy;

.field private final topAnimaView$delegate:Lkotlin/Lazy;

.field private final topContainer$delegate:Lkotlin/Lazy;

.field private final topWorkDesc$delegate:Lkotlin/Lazy;

.field private final viewPager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-mllpM33BswDp011Xp_0YmgfR2g(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;[Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->commonStep2InitView$lambda$2(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;[Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v0, 0x7f0d004f

    .line 26
    invoke-direct {p0, v0, v0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;-><init>(II)V

    .line 31
    new-instance v0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$tabLayout$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$tabLayout$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->tabLayout$delegate:Lkotlin/Lazy;

    .line 32
    new-instance v0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$viewPager$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$viewPager$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->viewPager$delegate:Lkotlin/Lazy;

    .line 33
    new-instance v0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$topAnimaView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$topAnimaView$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->topAnimaView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$topContainer$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$topContainer$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->topContainer$delegate:Lkotlin/Lazy;

    .line 35
    new-instance v0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$topWorkDesc$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$topWorkDesc$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->topWorkDesc$delegate:Lkotlin/Lazy;

    .line 36
    new-instance v0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$rootLayout$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$rootLayout$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->rootLayout$delegate:Lkotlin/Lazy;

    .line 37
    new-instance v0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$close$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$close$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->close$delegate:Lkotlin/Lazy;

    const-wide/16 v0, 0x12c

    .line 39
    iput-wide v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->animaDuration:J

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->firstChange:Z

    return-void
.end method

.method public static final synthetic access$closeAnimator(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->closeAnimator()V

    return-void
.end method

.method public static final synthetic access$getFirstChange$p(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->firstChange:Z

    return p0
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;
    .registers 1

    .line 25
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;
    .registers 1

    .line 25
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;

    return-object p0
.end method

.method public static final synthetic access$getTabLayout(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/google/android/material/tabs/TabLayout;
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTopAnimaView(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTopAnimaView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTopContainer(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTopContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTopWorkDesc(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Landroid/widget/TextView;
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTopWorkDesc()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Z
    .registers 1

    .line 25
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setFirstChange$p(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->firstChange:Z

    return-void
.end method

.method private final closeAnimator()V
    .registers 5

    const v0, 0x7f01000e

    .line 144
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 145
    iget-wide v1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->animaDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 146
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTopContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getRootLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f01001a

    .line 148
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 149
    iget-wide v1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->animaDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const v1, 0x7f010058

    .line 150
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 151
    iget-wide v2, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->animaDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 152
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getClose()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    new-instance v1, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$closeAnimator$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$closeAnimator$1;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 168
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static final commonStep2InitView$lambda$2(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;[Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$titles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 123
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    const v1, 0x7f0d02fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a07af

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aget-object p1, p1, p3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private final enterAnimator()V
    .registers 4

    const v0, 0x7f01000c

    .line 131
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 132
    iget-wide v1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->animaDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 133
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTopContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getRootLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f01001a

    .line 135
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 136
    iget-wide v1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->animaDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f010059

    .line 138
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 139
    iget-wide v1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->animaDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 140
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getClose()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final getClose()Landroid/widget/ImageView;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->close$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getRootLayout()Landroid/view/View;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->rootLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->tabLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method private final getTopAnimaView()Lcom/airbnb/lottie/LottieAnimationView;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->topAnimaView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method private final getTopContainer()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->topContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method private final getTopWorkDesc()Landroid/widget/TextView;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->topWorkDesc$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->viewPager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method


# virtual methods
.method public commonStep2InitView()V
    .registers 8

    .line 62
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep2InitView()V

    const-string v0, "KittenN"

    const-string v1, "Nemo"

    .line 63
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    const/4 v3, 0x2

    if-ge v2, v3, :cond_4b

    .line 13543
    aget-object v3, v0, v2

    .line 65
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d02fb

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a07af

    .line 67
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v3

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_4b
    new-array v2, v3, [Lcom/ljwx/basefragment/BaseBindingFragment;

    .line 70
    new-instance v3, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;

    invoke-direct {v3}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;

    invoke-direct {v3}, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 71
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$2;

    invoke-direct {v4, p0, v2}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;[Lcom/ljwx/basefragment/BaseBindingFragment;)V

    invoke-virtual {v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 102
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    sget-object v3, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {v3}, Lcom/codemao/nemo/constant/AppConfig;->getMINE_PAGE_TAB_INDEX()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 103
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 104
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$4;

    invoke-direct {v2}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$4;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 121
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v3

    .line 126
    new-instance v4, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;[Ljava/lang/String;)V

    .line 121
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 126
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 127
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->enterAnimator()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 43
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, p1, v0, v1}, Lcom/ljwx/baseapp/page/IPageStatusBar$DefaultImpls;->setStatusBarTransparent$default(Lcom/ljwx/baseapp/page/IPageStatusBar;ZILjava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->commonStep2InitView()V

    .line 46
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getClose()Landroid/widget/ImageView;

    move-result-object v0

    const-string v2, "close"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$onCreate$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$onCreate$1;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    .line 20
    new-instance v3, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v4, 0x1f4

    invoke-direct {v3, v4, v5, p1, v2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTopContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v2, "topContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$onCreate$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$onCreate$2;-><init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V

    .line 20
    new-instance v3, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v3, v4, v5, p1, v2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v2, :cond_49

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_49
    if-eqz v1, :cond_52

    .line 57
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    invoke-virtual {v1, p1, v0, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_52
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 173
    :try_start_0
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->onDestroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
