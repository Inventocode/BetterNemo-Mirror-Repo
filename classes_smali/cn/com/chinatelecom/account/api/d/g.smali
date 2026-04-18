.class public final Lcn/com/chinatelecom/account/api/d/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/net/Network;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcn/com/chinatelecom/account/api/d/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->a(Lcn/com/chinatelecom/account/api/d/h;)I

    move-result v0

    iput v0, p0, Lcn/com/chinatelecom/account/api/d/g;->j:I

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->b(Lcn/com/chinatelecom/account/api/d/h;)I

    move-result v0

    iput v0, p0, Lcn/com/chinatelecom/account/api/d/g;->k:I

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->c(Lcn/com/chinatelecom/account/api/d/h;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->a:Landroid/net/Network;

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/chinatelecom/account/api/d/g;->b:I

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->d(Lcn/com/chinatelecom/account/api/d/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->e(Lcn/com/chinatelecom/account/api/d/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->f(Lcn/com/chinatelecom/account/api/d/h;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->g(Lcn/com/chinatelecom/account/api/d/h;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/chinatelecom/account/api/d/g;->f:Z

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->h(Lcn/com/chinatelecom/account/api/d/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->g:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->i(Lcn/com/chinatelecom/account/api/d/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->h:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/h;->j(Lcn/com/chinatelecom/account/api/d/h;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/d/g;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcn/com/chinatelecom/account/api/d/g;->j:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    const/16 v0, 0xbb8

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcn/com/chinatelecom/account/api/d/g;->k:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    const/16 v0, 0xbb8

    return v0
.end method
