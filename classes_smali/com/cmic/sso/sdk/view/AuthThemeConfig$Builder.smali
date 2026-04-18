.class public Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/view/AuthThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Lcom/cmic/sso/sdk/view/BackPressedListener;

.field private I:Lcom/cmic/sso/sdk/view/LoginClickListener;

.field private J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:I

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:I

.field private Z:Z

.field private a:I

.field private aa:I

.field private ab:I

.field private ac:Z

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:Z

.field private ai:I

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:Z

.field private b:Z

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Landroid/widget/ImageView$ScaleType;

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:I

.field private w:Z

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->a:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->c:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->d:I

    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->e:I

    const/16 v3, 0x11

    iput v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->g:I

    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->h:I

    const v3, -0xff7930

    iput v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->i:I

    const-string v4, "return_bg"

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->j:Ljava/lang/String;

    const/4 v4, -0x2

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->k:I

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->l:I

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->m:Landroid/widget/ImageView$ScaleType;

    const/16 v4, 0x12

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->n:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->o:Z

    iput v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->p:I

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->q:I

    const/16 v3, 0xb8

    iput v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r:I

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s:I

    const-string/jumbo v3, "本机号码一键登录"

    iput-object v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u:Z

    const/16 v4, 0xf

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->v:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->w:Z

    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x:I

    const-string v4, "umcsdk_login_btn_bg"

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->y:Ljava/lang/String;

    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->z:I

    const/16 v4, 0x24

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->A:I

    const/16 v4, 0x2e

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->B:I

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->C:I

    const/16 v4, 0xfe

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D:I

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E:I

    const-string v4, "umcsdk_check_image"

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->K:Ljava/lang/String;

    const-string v4, "umcsdk_uncheck_image"

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->L:Ljava/lang/String;

    const/16 v4, 0x9

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->M:I

    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->N:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->O:Z

    const-string/jumbo v4, "登录即同意$$运营商条款$$并使用本机号码登录"

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->P:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Q:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->R:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->T:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->U:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->V:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->W:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->X:Ljava/lang/String;

    const/16 v1, 0xa

    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Y:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Z:Z

    const v1, -0x99999a

    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa:I

    const v1, -0xf441fa

    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ac:Z

    const/16 v1, 0x34

    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ad:I

    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ae:I

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag:I

    iput-boolean v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ah:Z

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ar:I

    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->as:I

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->at:I

    iput-boolean v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->au:Z

    return-void
.end method

.method static synthetic A(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->A:I

    return p0
.end method

.method static synthetic B(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->B:I

    return p0
.end method

.method static synthetic C(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->C:I

    return p0
.end method

.method static synthetic D(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D:I

    return p0
.end method

.method static synthetic E(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E:I

    return p0
.end method

.method static synthetic F(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->F:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->G:Z

    return p0
.end method

.method static synthetic H(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/BackPressedListener;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->H:Lcom/cmic/sso/sdk/view/BackPressedListener;

    return-object p0
.end method

.method static synthetic I(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/LoginClickListener;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->I:Lcom/cmic/sso/sdk/view/LoginClickListener;

    return-object p0
.end method

.method static synthetic J(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/CheckBoxListener;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

    return-object p0
.end method

.method static synthetic K(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->K:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->L:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic M(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->M:I

    return p0
.end method

.method static synthetic N(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->N:I

    return p0
.end method

.method static synthetic O(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->O:Z

    return p0
.end method

.method static synthetic P(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->P:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Q(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic R(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->R:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->S:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic T(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->T:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic U(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->U:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->V:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic W(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->W:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic X(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->X:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Y(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Y:I

    return p0
.end method

.method static synthetic Z(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Z:Z

    return p0
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->a:I

    return p0
.end method

.method static synthetic aa(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa:I

    return p0
.end method

.method static synthetic ab(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab:I

    return p0
.end method

.method static synthetic ac(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ac:Z

    return p0
.end method

.method static synthetic ad(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ad:I

    return p0
.end method

.method static synthetic ae(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ae:I

    return p0
.end method

.method static synthetic af(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af:I

    return p0
.end method

.method static synthetic ag(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag:I

    return p0
.end method

.method static synthetic ah(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ah:Z

    return p0
.end method

.method static synthetic ai(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ai:I

    return p0
.end method

.method static synthetic aj(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aj:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ak(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ak:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic al(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->al:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic am(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->am:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic an(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->an:I

    return p0
.end method

.method static synthetic ao(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ao:I

    return p0
.end method

.method static synthetic ap(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ap:I

    return p0
.end method

.method static synthetic aq(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aq:I

    return p0
.end method

.method static synthetic ar(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ar:I

    return p0
.end method

.method static synthetic as(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->as:I

    return p0
.end method

.method static synthetic at(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->at:I

    return p0
.end method

.method static synthetic au(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->au:Z

    return p0
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->d:I

    return p0
.end method

.method static synthetic e(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->g:I

    return p0
.end method

.method static synthetic h(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->h:I

    return p0
.end method

.method static synthetic i(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->i:I

    return p0
.end method

.method static synthetic j(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->k:I

    return p0
.end method

.method static synthetic l(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->l:I

    return p0
.end method

.method static synthetic m(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Landroid/widget/ImageView$ScaleType;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->m:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method static synthetic n(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->n:I

    return p0
.end method

.method static synthetic o(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->o:Z

    return p0
.end method

.method static synthetic p(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->p:I

    return p0
.end method

.method static synthetic q(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->q:I

    return p0
.end method

.method static synthetic r(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r:I

    return p0
.end method

.method static synthetic s(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s:I

    return p0
.end method

.method static synthetic t(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u:Z

    return p0
.end method

.method static synthetic v(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->v:I

    return p0
.end method

.method static synthetic w(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->w:Z

    return p0
.end method

.method static synthetic x(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x:I

    return p0
.end method

.method static synthetic y(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic z(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->z:I

    return p0
.end method


# virtual methods
.method public build()Lcom/cmic/sso/sdk/view/AuthThemeConfig;
    .registers 3

    new-instance v0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;-><init>(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;Lcom/cmic/sso/sdk/view/AuthThemeConfig$1;)V

    return-object v0
.end method

.method public setClauseColor(II)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 3

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa:I

    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab:I

    return-object p0
.end method

.method public setLogBtnClickListener(Lcom/cmic/sso/sdk/view/LoginClickListener;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->I:Lcom/cmic/sso/sdk/view/LoginClickListener;

    return-object p0
.end method

.method public setLogBtnOffsetY(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E:I

    return-object p0
.end method

.method public setLogBtnOffsetY_B(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D:I

    return-object p0
.end method

.method public setLogBtnText(Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "^\\s*\\n*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1b

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u:Z

    :cond_1b
    return-object p0
.end method

.method public setLogBtnTextColor(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x:I

    return-object p0
.end method

.method public setNavTextColor(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->h:I

    return-object p0
.end method

.method public setNumFieldOffsetY(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s:I

    return-object p0
.end method

.method public setNumFieldOffsetY_B(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r:I

    return-object p0
.end method

.method public setNumberColor(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->p:I

    return-object p0
.end method

.method public setPrivacyOffsetY(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag:I

    return-object p0
.end method

.method public setPrivacyOffsetY_B(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af:I

    return-object p0
.end method

.method public setPrivacyState(Z)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->O:Z

    return-object p0
.end method
