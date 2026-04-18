.class public Lcom/cmic/sso/sdk/view/AuthThemeConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    }
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

.field private ah:I

.field private ai:Z

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

.field private k:I

.field private l:I

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
.method private constructor <init>(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->u:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->U:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->V:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->X:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->a(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->a:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->b(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->b:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->c(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->d(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->d:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->e(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->e:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->f(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->g(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->g:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->h(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->h:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->i(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->i:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->j(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->k(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->k:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->l(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->l:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->m(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Landroid/widget/ImageView$ScaleType;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->n(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->n:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->o(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->o:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->p(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->p:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->q(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->q:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->r:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->s:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->t:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->u:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->v(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->v:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->w(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->w:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->x:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->y(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->y:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->z(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->z:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->A(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->A:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->B(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->B:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->C(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->C:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->D:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->E:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->F(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->F:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->G(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->G:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->H(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/BackPressedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->H:Lcom/cmic/sso/sdk/view/BackPressedListener;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->I(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->I:Lcom/cmic/sso/sdk/view/LoginClickListener;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->J(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/CheckBoxListener;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->K(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->K:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->L(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->L:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->M(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->M:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->N(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->N:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->O(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->O:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->P(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->P:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Q(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Q:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->R(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->R:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->S(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->S:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->T(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->T:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->U(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->U:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->V(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->V:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->W(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->W:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->X(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->X:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Y(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Y:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Z(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Z:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aa:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ab:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ac(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ac:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ad(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ae:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ae(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->af:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ag:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ah:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ah(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ai:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ai(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ad:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aj(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aj:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ak(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ak:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->al(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->al:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->am(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->am:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->an(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->an:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ao(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ao:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ap(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ap:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aq(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aq:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ar(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ar:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->as(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->as:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->at(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->at:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->au(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->au:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;Lcom/cmic/sso/sdk/view/AuthThemeConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;-><init>(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getActivityIn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->am:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityOut()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLanguageType()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->at:I

    return v0
.end method

.method public getAuthPageActIn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageActOut()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->al:Ljava/lang/String;

    return-object v0
.end method

.method public getBackPressedListener()Lcom/cmic/sso/sdk/view/BackPressedListener;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->H:Lcom/cmic/sso/sdk/view/BackPressedListener;

    return-object v0
.end method

.method public getCheckBoxListener()Lcom/cmic/sso/sdk/view/CheckBoxListener;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

    return-object v0
.end method

.method public getCheckBoxLocation()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ad:I

    return v0
.end method

.method public getCheckTipText()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->G:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->at:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const-string/jumbo v0, "請勾選同意服務條款"

    goto :goto_16

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const-string v0, "Please check to agree to the terms of service"

    goto :goto_16

    :cond_13
    const-string/jumbo v0, "请勾选同意服务条款"

    :goto_16
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->F:Ljava/lang/String;

    :cond_18
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedImgHeight()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->N:I

    return v0
.end method

.method public getCheckedImgPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedImgWidth()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->M:I

    return v0
.end method

.method public getClauseBaseColor()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aa:I

    return v0
.end method

.method public getClauseColor()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ab:I

    return v0
.end method

.method public getClauseLayoutResID()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->e:I

    return v0
.end method

.method public getClauseLayoutReturnID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->U:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->W:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->c:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutResID()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->d:I

    return v0
.end method

.method public getLogBtnBackgroundPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getLogBtnHeight()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->A:I

    return v0
.end method

.method public getLogBtnMarginLeft()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->B:I

    return v0
.end method

.method public getLogBtnMarginRight()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->C:I

    return v0
.end method

.method public getLogBtnOffsetY()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->D:I

    return v0
.end method

.method public getLogBtnOffsetY_B()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->E:I

    return v0
.end method

.method public getLogBtnText()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->u:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->at:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const-string/jumbo v0, "本機號碼登錄"

    goto :goto_15

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const-string v0, "Login"

    goto :goto_15

    :cond_13
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->t:Ljava/lang/String;

    :goto_15
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->t:Ljava/lang/String;

    :cond_17
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getLogBtnTextColor()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->x:I

    return v0
.end method

.method public getLogBtnTextSize()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->v:I

    return v0
.end method

.method public getLogBtnWidth()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->z:I

    return v0
.end method

.method public getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->I:Lcom/cmic/sso/sdk/view/LoginClickListener;

    return-object v0
.end method

.method public getNavColor()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->i:I

    return v0
.end method

.method public getNavReturnImgHeight()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->l:I

    return v0
.end method

.method public getNavReturnImgWidth()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->k:I

    return v0
.end method

.method public getNavTextColor()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->h:I

    return v0
.end method

.method public getNavTextSize()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->g:I

    return v0
.end method

.method public getNumFieldOffsetY()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->r:I

    return v0
.end method

.method public getNumFieldOffsetY_B()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->s:I

    return v0
.end method

.method public getNumberColor()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->p:I

    return v0
.end method

.method public getNumberOffsetX()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->q:I

    return v0
.end method

.method public getNumberSize()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->n:I

    return v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyMarginLeft()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ae:I

    return v0
.end method

.method public getPrivacyMarginRight()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->af:I

    return v0
.end method

.method public getPrivacyOffsetY()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ag:I

    return v0
.end method

.method public getPrivacyOffsetY_B()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ah:I

    return v0
.end method

.method public getPrivacyTextSize()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Y:I

    return v0
.end method

.method public getStatusBarColor()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->a:I

    return v0
.end method

.method public getThemeId()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->as:I

    return v0
.end method

.method public getUncheckedImgPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowBottom()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ar:I

    return v0
.end method

.method public getWindowHeight()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ao:I

    return v0
.end method

.method public getWindowWidth()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->an:I

    return v0
.end method

.method public getWindowX()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ap:I

    return v0
.end method

.method public getWindowY()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aq:I

    return v0
.end method

.method public isFitsSystemWindows()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->au:Z

    return v0
.end method

.method public isLightColor()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->b:Z

    return v0
.end method

.method public isLogBtnTextBold()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->w:Z

    return v0
.end method

.method public isNumberBold()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->o:Z

    return v0
.end method

.method public isPrivacyBookSymbol()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ai:Z

    return v0
.end method

.method public isPrivacyState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->O:Z

    return v0
.end method

.method public isPrivacyTextBold()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Z:Z

    return v0
.end method

.method public isPrivacyTextGravityCenter()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ac:Z

    return v0
.end method
