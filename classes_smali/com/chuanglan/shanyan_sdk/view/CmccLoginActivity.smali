.class public Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;
.super Lcom/cmic/sso/sdk/view/LoginAuthActivity;


# instance fields
.field private A:Lcom/chuanglan/shanyan_sdk/view/a;

.field private B:J

.field private C:J

.field private D:Landroid/widget/RelativeLayout;

.field private E:I

.field private F:Landroid/view/ViewGroup;

.field private G:I

.field private H:Landroid/widget/Button;

.field private I:Landroid/widget/Button;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/content/Context;

.field private k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/chuanglan/shanyan_sdk/view/b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/CheckBox;

.field private x:Landroid/view/ViewGroup;

.field private y:Landroid/view/ViewGroup;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->G:I

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/CheckBox;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private static a(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_23

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_23

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_23
    return-object v0
.end method

.method static synthetic b(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)I
    .registers 3

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->G:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->G:I

    return v0
.end method

.method static synthetic c(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)I
    .registers 1

    iget p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->G:I

    return p0
.end method

.method static synthetic d(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    return-object p0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;-><init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->o:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$2;-><init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$3;-><init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$4;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$4;-><init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic e(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCheckedImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCheckedImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2d

    :cond_14
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "umcsdk_check_image"

    const-string v4, "drawable"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :goto_2d
    return-void
.end method

.method static synthetic f(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private f()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "initViews enterAnim"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getEnterAnim()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "exitAnim"

    aput-object v4, v0, v1

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getExitAnim()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "UIShanYanTask"

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getEnterAnim()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getExitAnim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    :cond_34
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getEnterAnim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->e(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v1

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getExitAnim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/chuanglan/shanyan_sdk/utils/n;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b3

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7a
    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_7a

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->e:Landroid/widget/CheckBox;

    goto :goto_7a

    :cond_8f
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x4444

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x7777

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b3
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "layout_shanyan_login"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->c:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_tv_per_code"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_bt_one_key_login"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_navigationbar_back"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->i:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_navigationbar_include"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_navigationbar_title"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_log_image"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->n:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_navigationbar_back_root"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->o:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_identify_tv"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_slogan"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->q:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_privacy_text"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->r:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_privacy_checkbox"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_privacy_checkbox_rootlayout"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_privacy_include"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->x:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_login_layout"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_sysdk_video_view"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/chuanglan/shanyan_sdk/view/a;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v1, "shanyan_view_login_boby"

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1f3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    :cond_1f3
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Landroid/widget/CheckBox;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic g(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    return-object p0
.end method

.method private g()V
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    const-string v1, "authPageFlag"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/chuanglan/shanyan_sdk/b;->ai:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/chuanglan/shanyan_sdk/b;->aj:J

    return-void
.end method

.method static synthetic h(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    return-object p0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    goto :goto_2f

    :cond_27
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v0, :cond_4c

    const/high16 v1, -0x40800000  # -1.0f

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getDialogDimAmount()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getDialogDimAmount()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_4c
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->i()V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l()V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m()V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k()V

    return-void
.end method

.method static synthetic i(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->B:J

    return-wide v0
.end method

.method private i()V
    .registers 27

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isFullScreen()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_16

    invoke-static/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/app/Activity;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    goto :goto_1f

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/o;->b(Landroid/view/Window;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    :cond_1f
    :goto_1f
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isDialogTheme()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getDialogWidth()I

    move-result v1

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getDialogHeight()I

    move-result v2

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getDialogX()I

    move-result v3

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getDialogY()I

    move-result v4

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isDialogBottom()Z

    move-result v5

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/app/Activity;IIIIZ)V

    :cond_4a
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getTextSizeIsdp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_60

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->r:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6c

    :cond_60
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->r:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_6c
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextBold()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->r:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_81

    :cond_7b
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->r:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextLineSpacingAdd()F

    move-result v0

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_ab

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextLineSpacingMult()F

    move-result v0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_ab

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->r:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextLineSpacingAdd()F

    move-result v2

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextLineSpacingMult()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_ab
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-object v8, v0

    iget-object v9, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v10, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseUrl()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseUrlTwo()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseUrlThree()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseColor()I

    move-result v19

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseBaseColor()I

    move-result v20

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->x:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyOffsetY()I

    move-result v22

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyOffsetBottomY()I

    move-result v23

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyOffsetX()I

    move-result v24

    const-string v11, "中国移动认证服务条款"

    const-string v15, "https://wap.cmpassport.com/resources/html/contract.html"

    const-string v25, "CMCC"

    invoke-static/range {v8 .. v25}, Lcom/chuanglan/shanyan_sdk/tool/b;->a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View;IIILjava/lang/String;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isCheckBoxHidden()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_10f

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_152

    :cond_10f
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v9, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCbMarginLeft()I

    move-result v10

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCbMarginTop()I

    move-result v11

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCbMarginRigth()I

    move-result v12

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCbMarginBottom()I

    move-result v13

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCbLeft()I

    move-result v14

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCbTop()I

    move-result v15

    invoke-static/range {v8 .. v15}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;IIIIII)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    iget-object v4, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCheckboxWidth()I

    move-result v4

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCheckboxHeight()I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/content/Context;Landroid/view/View;II)V

    :goto_152
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getAuthBGImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "umcsdk_shanyan_authbackground"

    const-string v4, "drawable"

    if-eqz v0, :cond_16a

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getAuthBGImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b3

    :cond_16a
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getAuthBgGifPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v8}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getAuthBgGifPath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v4, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/m;->a()Lcom/chuanglan/shanyan_sdk/utils/m;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/chuanglan/shanyan_sdk/utils/m;->a(Ljava/io/InputStream;)Lcom/chuanglan/shanyan_sdk/utils/m;

    move-result-object v0

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Lcom/chuanglan/shanyan_sdk/utils/m;->a(Landroid/view/View;)V

    goto :goto_1b3

    :cond_19e
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v3, v4, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_1b3
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getAuthBgVideoPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1df

    new-instance v0, Lcom/chuanglan/shanyan_sdk/view/a;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/chuanglan/shanyan_sdk/view/a;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v9, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v9}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getAuthBgVideoPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Lcom/chuanglan/shanyan_sdk/view/a;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    invoke-virtual {v5, v8, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1e6

    :cond_1df
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :goto_1e6
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isAuthNavTransparent()Z

    move-result v0

    if-eqz v0, :cond_202

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_202
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isAuthNavHidden()Z

    move-result v0

    if-eqz v0, :cond_210

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_215

    :cond_210
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_215
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m:Landroid/widget/TextView;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m:Landroid/widget/TextView;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavTextColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getTextSizeIsdp()Z

    move-result v0

    if-eqz v0, :cond_240

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m:Landroid/widget/TextView;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavTextSize()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_24c

    :cond_240
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m:Landroid/widget/TextView;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavTextSize()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_24c
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavTextBold()Z

    move-result v0

    if-eqz v0, :cond_25b

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    goto :goto_261

    :cond_25b
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    :goto_261
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavReturnImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_278

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->i:Landroid/widget/ImageView;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavReturnImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_28f

    :cond_278
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->i:Landroid/widget/ImageView;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "umcsdk_return_bg"

    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_28f
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isNavReturnImgHidden()Z

    move-result v0

    if-eqz v0, :cond_29d

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2c9

    :cond_29d
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v9, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavReturnBtnOffsetX()I

    move-result v10

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavReturnBtnOffsetY()I

    move-result v11

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNavReturnBtnOffsetRightX()I

    move-result v12

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getReturnBtnWidth()I

    move-result v13

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getReturnBtnHeight()I

    move-result v14

    iget-object v15, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->i:Landroid/widget/ImageView;

    invoke-static/range {v8 .. v15}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/content/Context;Landroid/view/View;IIIIILandroid/widget/ImageView;)V

    :goto_2c9
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogoImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2dd

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->n:Landroid/widget/ImageView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogoImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2f2

    :cond_2dd
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->n:Landroid/widget/ImageView;

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v3, v4, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2f2
    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v9, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->n:Landroid/widget/ImageView;

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogoOffsetX()I

    move-result v10

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogoOffsetY()I

    move-result v11

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogoOffsetBottomY()I

    move-result v12

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogoWidth()I

    move-result v13

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogoHeight()I

    move-result v14

    invoke-static/range {v8 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/o;->b(Landroid/content/Context;Landroid/view/View;IIIII)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isLogoHidden()Z

    move-result v0

    if-eqz v0, :cond_325

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_32a

    :cond_325
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_32a
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumberColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getTextSizeIsdp()Z

    move-result v0

    if-eqz v0, :cond_34a

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumberSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_356

    :cond_34a
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumberSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_356
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumberBold()Z

    move-result v0

    if-eqz v0, :cond_365

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_36b

    :cond_365
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_36b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v9, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumFieldOffsetX()I

    move-result v10

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumFieldOffsetY()I

    move-result v11

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumFieldOffsetBottomY()I

    move-result v12

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumFieldWidth()I

    move-result v13

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getNumFieldHeight()I

    move-result v14

    invoke-static/range {v8 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/o;->b(Landroid/content/Context;Landroid/view/View;IIIII)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getTextSizeIsdp()Z

    move-result v0

    if-eqz v0, :cond_3be

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_3ca

    :cond_3be
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    :goto_3ca
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnTextBold()Z

    move-result v0

    if-eqz v0, :cond_3d9

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_3df

    :cond_3d9
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_3df
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnBackgroundPath()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3f6

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnBackgroundPath()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40d

    :cond_3f6
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "umcsdk_login_btn_bg"

    invoke-virtual {v3, v8, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_40d
    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v9, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnOffsetX()I

    move-result v10

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnOffsetY()I

    move-result v11

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnOffsetBottomY()I

    move-result v12

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnWidth()I

    move-result v13

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLogBtnHeight()I

    move-result v14

    invoke-static/range {v8 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/content/Context;Landroid/view/View;IIIII)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    const-string v3, "中国移动提供认证服务"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getSloganTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getTextSizeIsdp()Z

    move-result v0

    if-eqz v0, :cond_459

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getSloganTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_465

    :cond_459
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getSloganTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_465
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getSloganTextBold()Z

    move-result v0

    if-eqz v0, :cond_474

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_47a

    :cond_474
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_47a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getSloganOffsetX()I

    move-result v4

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getSloganOffsetY()I

    move-result v5

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v8}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getSloganOffsetBottomY()I

    move-result v8

    invoke-static {v0, v3, v4, v5, v8}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/content/Context;Landroid/view/View;III)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isSloganHidden()Z

    move-result v0

    if-eqz v0, :cond_4a4

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a9

    :cond_4a4
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4a9
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isShanYanSloganHidden()Z

    move-result v0

    if-eqz v0, :cond_4b7

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_514

    :cond_4b7
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->q:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getShanYanSloganTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getTextSizeIsdp()Z

    move-result v0

    if-eqz v0, :cond_4d7

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->q:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getShanYanSloganTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4e3

    :cond_4d7
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->q:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getShanYanSloganTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_4e3
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getShanYanSloganTextBold()Z

    move-result v0

    if-eqz v0, :cond_4f2

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->q:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_4f8

    :cond_4f2
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->q:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_4f8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->q:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getShanYanSloganOffsetX()I

    move-result v4

    iget-object v5, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getShanYanSloganOffsetY()I

    move-result v5

    iget-object v8, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v8}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getShanYanSloganOffsetBottomY()I

    move-result v8

    invoke-static {v0, v3, v4, v5, v8}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/content/Context;Landroid/view/View;III)V

    :goto_514
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_525

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_525

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_525
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLoadingView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_547

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getLoadingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_559

    :cond_547
    invoke-static/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v3, "shanyan_view_onkeylogin_loading"

    invoke-virtual {v0, v3}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    :goto_559
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Landroid/view/ViewGroup;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_573

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_573

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_573
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomPrivacyAlertView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_586

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomPrivacyAlertView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    goto :goto_5db

    :cond_586
    iget v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->E:I

    if-ne v0, v1, :cond_591

    invoke-static/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v3, "layout_shanyan_dialog_privacy"

    goto :goto_597

    :cond_591
    invoke-static/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    const-string v3, "layout_shanyan_dialog_privacy_land"

    :goto_597
    invoke-virtual {v0, v3}, Lcom/chuanglan/shanyan_sdk/utils/n;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    invoke-static/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v3

    const-string v4, "shanyan_view_privacy_ensure"

    invoke-virtual {v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->H:Landroid/widget/Button;

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    invoke-static/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v3

    const-string v4, "shanyan_view_privace_cancel"

    invoke-virtual {v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->I:Landroid/widget/Button;

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->H:Landroid/widget/Button;

    new-instance v3, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$5;

    invoke-direct {v3, v6}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$5;-><init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->I:Landroid/widget/Button;

    new-instance v3, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;

    invoke-direct {v3, v6}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;-><init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5db
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    iget-object v3, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    const-string v3, "pstyle"

    const-string v4, "0"

    invoke-static {v0, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "first_launch"

    if-eqz v3, :cond_611

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-static {v0, v5, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_641

    :goto_608
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->e()V

    goto :goto_665

    :cond_611
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_639

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-static {v0, v5, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_626

    goto :goto_608

    :cond_626
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j()V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_64e

    :cond_639
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_654

    :cond_641
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j()V

    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_64e
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_66a

    :cond_654
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyState()Z

    move-result v0

    if-eqz v0, :cond_65d

    goto :goto_608

    :cond_65d
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j()V

    :goto_665
    iget-object v0, v6, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_66a
    return-void
.end method

.method static synthetic j(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->C:J

    return-wide v0
.end method

.method private j()V
    .registers 6

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getUncheckedImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getUncheckedImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2d

    :cond_14
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "umcsdk_uncheck_image"

    const-string v4, "drawable"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :goto_2d
    return-void
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getRelativeCustomView()Lcom/chuanglan/shanyan_sdk/view/c;

    return-void
.end method

.method static synthetic k(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->e()V

    return-void
.end method

.method private l()V
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5e

    const/4 v0, 0x0

    :goto_15
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5e

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/view/b;

    iget-boolean v2, v2, Lcom/chuanglan/shanyan_sdk/view/b;->b:Z

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/view/b;

    iget-object v2, v2, Lcom/chuanglan/shanyan_sdk/view/b;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    goto :goto_4e

    :cond_3c
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/view/b;

    iget-object v2, v2, Lcom/chuanglan/shanyan_sdk/view/b;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    :goto_4e
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chuanglan/shanyan_sdk/view/b;

    iget-object v3, v3, Lcom/chuanglan/shanyan_sdk/view/b;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_5e
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomViews()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_77
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_b2

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/view/b;

    iget-boolean v2, v2, Lcom/chuanglan/shanyan_sdk/view/b;->b:Z

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    goto :goto_90

    :cond_8e
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    :goto_90
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chuanglan/shanyan_sdk/view/b;

    iget-object v3, v3, Lcom/chuanglan/shanyan_sdk/view/b;->c:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/view/b;

    iget-object v2, v2, Lcom/chuanglan/shanyan_sdk/view/b;->c:Landroid/view/View;

    new-instance v3, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$8;-><init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_b2
    return-void
.end method

.method static synthetic l(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j()V

    return-void
.end method

.method static synthetic m(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private m()V
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_74

    const/4 v0, 0x0

    :goto_15
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_74

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getType()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    goto :goto_62

    :cond_4e
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    :goto_62
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_74
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCLCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCLCustomViews()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_8d
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e9

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e6

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getType()Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    goto :goto_b6

    :cond_b4
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    :goto_b6
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-static {v2, v3}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/content/Context;Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$9;-><init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e6
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_e9
    return-void
.end method

.method static synthetic n(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic p(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic q(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :try_start_3
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getEnterAnim()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getExitAnim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    :cond_13
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getEnterAnim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->e(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v1

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getExitAnim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/n;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_36} :catch_37

    goto :goto_4b

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "finish Exception="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onConfigurationChanged orientation"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "newConfig.orientation"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "ProcessShanYanLogger"

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_27
    iget v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->E:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_44

    iput p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->E:I

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_33

    goto :goto_44

    :catch_33
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "onConfigurationChanged Exception="

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    :goto_44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 18

    move-object/from16 v1, p0

    const-string/jumbo v0, "授权页拉起成功"

    invoke-super/range {p0 .. p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->E:I

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->B:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->C:J

    const/4 v2, 0x1

    if-eqz p1, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->finish()V

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_d8

    :cond_3d
    :try_start_3d
    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v3, :cond_58

    const/high16 v4, -0x40800000  # -1.0f

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getDialogDimAmount()F

    move-result v3

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_58

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getDialogDimAmount()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    :cond_58
    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->f()V

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->d()V

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g()V

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v5

    const/16 v6, 0x3e8

    const-string v7, "CMCC"

    const/16 v3, 0x3e8

    invoke-static {v3, v0, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    sget-wide v10, Lcom/chuanglan/shanyan_sdk/b;->ak:J

    sget-wide v12, Lcom/chuanglan/shanyan_sdk/b;->af:J

    sget-wide v14, Lcom/chuanglan/shanyan_sdk/b;->ae:J

    invoke-virtual/range {v5 .. v15}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    sput-boolean v2, Lcom/chuanglan/shanyan_sdk/b;->ao:Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7f} :catch_80

    goto :goto_d8

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v3

    const/16 v4, 0x3f6

    const/16 v5, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate--Exception_e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->B:J

    iget-wide v14, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->C:J

    const-string v5, "CMCC"

    const-string v8, ""

    invoke-virtual/range {v3 .. v15}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    sget-object v3, Lcom/chuanglan/shanyan_sdk/b;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onCreate Exception="

    aput-object v5, v3, v4

    aput-object v0, v3, v2

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->finish()V

    :goto_d8
    return-void
.end method

.method protected onDestroy()V
    .registers 6

    invoke-super {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->onDestroy()V

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_9
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->D:Landroid/widget/RelativeLayout;

    :cond_13
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->s:Ljava/util/ArrayList;

    :cond_1c
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->t:Ljava/util/ArrayList;

    :cond_25
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    :cond_2e
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    :cond_37
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    if-eqz v0, :cond_4a

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    invoke-virtual {v0, v2}, Lcom/chuanglan/shanyan_sdk/view/a;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    :cond_4a
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    if-eqz v0, :cond_53

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h:Landroid/widget/Button;

    :cond_53
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    if-eqz v0, :cond_61

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->w:Landroid/widget/CheckBox;

    :cond_61
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->F:Landroid/view/ViewGroup;

    :cond_6a
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_78

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->o:Landroid/widget/RelativeLayout;

    :cond_78
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_86

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->z:Landroid/widget/RelativeLayout;

    :cond_86
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->c:Landroid/view/ViewGroup;

    :cond_8f
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_a2
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    if-eqz v0, :cond_c9

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c9

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_c9
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    if-eqz v0, :cond_f0

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f0

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_f0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v0, :cond_103

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCLCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCLCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_103
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    if-eqz v0, :cond_12a

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCLCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_12a

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCLCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_12a
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    if-eqz v0, :cond_151

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCLCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_151

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCLCustomViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_151
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_15a

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l:Landroid/widget/RelativeLayout;

    :cond_15a
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->x:Landroid/view/ViewGroup;

    if-eqz v0, :cond_163

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->x:Landroid/view/ViewGroup;

    :cond_163
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->y:Landroid/view/ViewGroup;

    :cond_16c
    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->i:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->n:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->p:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->r:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->v:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/m;->a()Lcom/chuanglan/shanyan_sdk/utils/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/utils/m;->b()V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_181} :catch_182

    goto :goto_195

    :catch_182
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onDestroy Exception="

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_195
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 16

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3b

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isBackPressedAvailable()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->finish()V

    :cond_14
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v0

    const/16 v1, 0x3f3

    const/16 p1, 0x3f3

    const-string/jumbo p2, "点击返回，用户取消免密登录"

    const-string/jumbo v2, "点击物理返回，用户取消免密登录"

    invoke-static {p1, p2, v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->B:J

    iget-wide v11, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->C:J

    const-string v2, "CMCC"

    const-string v5, "1011"

    const-string/jumbo v6, "点击返回"

    invoke-virtual/range {v0 .. v12}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    const/4 p1, 0x1

    return p1

    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method protected onRestart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getAuthBgVideoPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getAuthBgVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Lcom/chuanglan/shanyan_sdk/view/a;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->A:Lcom/chuanglan/shanyan_sdk/view/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_a
    return-void
.end method
