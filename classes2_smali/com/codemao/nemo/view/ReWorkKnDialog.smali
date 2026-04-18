.class public final Lcom/codemao/nemo/view/ReWorkKnDialog;
.super Landroid/app/Dialog;
.source "ReWorkKnDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReWorkKnDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReWorkKnDialog.kt\ncom/codemao/nemo/view/ReWorkKnDialog\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n*L\n1#1,117:1\n15#2,7:118\n15#2,7:125\n*S KotlinDebug\n*F\n+ 1 ReWorkKnDialog.kt\ncom/codemao/nemo/view/ReWorkKnDialog\n*L\n56#1:118,7\n70#1:125,7\n*E\n"
.end annotation


# instance fields
.field private detail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private final studyWork:Lcom/ljwx/baseapp/callback/CallbackType;


# direct methods
.method public static synthetic $r8$lambda$heG8AedO9Z919-XqXscdfkRdEV8(Lcom/codemao/nemo/view/ReWorkKnDialog;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/view/ReWorkKnDialog;->initView$lambda$0(Lcom/codemao/nemo/view/ReWorkKnDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;Lcom/ljwx/baseapp/callback/CallbackType;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "studyWork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f13034a

    .line 32
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p2, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->detail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    .line 30
    iput-object p3, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->studyWork:Lcom/ljwx/baseapp/callback/CallbackType;

    .line 34
    new-instance p2, Lcom/codemao/nemo/view/ReWorkKnDialog$rootView$2;

    invoke-direct {p2, p1}, Lcom/codemao/nemo/view/ReWorkKnDialog$rootView$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->rootView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final changeView()V
    .registers 7

    .line 62
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a085d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_40

    .line 63
    iget-object v1, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->detail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->getNeedFollow()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "关注并学习代码"

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 65
    :cond_1d
    iget-object v1, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->detail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->isPraised()Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "点赞并学习代码"

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    :cond_2b
    const-string v1, "学习代码"

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_30
    new-instance v1, Lcom/codemao/nemo/view/ReWorkKnDialog$changeView$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ReWorkKnDialog$changeView$1$1;-><init>(Lcom/codemao/nemo/view/ReWorkKnDialog;)V

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 20
    new-instance v5, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_40
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a08fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_70

    .line 75
    iget-object v1, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->detail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->getNeedFollow()Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string v1, "作品仅对粉丝开放哦"

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_70

    .line 77
    :cond_5d
    iget-object v1, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->detail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->isPraised()Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, "点个赞感谢作者吧"

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_70

    :cond_6b
    const-string v1, "再创作也是学习的好方式"

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_70
    :goto_70
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0615

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_b8

    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 86
    new-instance v2, Lcom/codemao/nemo/view/ReWorkKnDialog$changeView$3$1;

    invoke-direct {v2}, Lcom/codemao/nemo/view/ReWorkKnDialog$changeView$3$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const v2, 0x7f0805f0

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_b8
    return-void
.end method

.method private final getRootView()Landroid/view/View;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final initView()V
    .registers 7

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 44
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 45
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 47
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 48
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 49
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    new-instance v0, Lcom/codemao/nemo/view/ReWorkKnDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/ReWorkKnDialog$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/view/ReWorkKnDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    new-instance v1, Lcom/codemao/nemo/view/ReWorkKnDialog$initView$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ReWorkKnDialog$initView$2;-><init>(Lcom/codemao/nemo/view/ReWorkKnDialog;)V

    const-wide/16 v4, 0x1f4

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v2, v4, v5, v3, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5b
    return-void
.end method

.method private static final initView$lambda$0(Lcom/codemao/nemo/view/ReWorkKnDialog;Landroid/content/DialogInterface;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->studyWork:Lcom/ljwx/baseapp/callback/CallbackType;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/ljwx/baseapp/callback/CallbackType;->invoke(I)V

    return-void
.end method


# virtual methods
.method public final getStudyWork()Lcom/ljwx/baseapp/callback/CallbackType;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkKnDialog;->studyWork:Lcom/ljwx/baseapp/callback/CallbackType;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->initView()V

    return-void
.end method

.method public show()V
    .registers 1

    .line 113
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 114
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->changeView()V

    return-void
.end method
