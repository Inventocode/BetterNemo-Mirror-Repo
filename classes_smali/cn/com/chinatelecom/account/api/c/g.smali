.class final Lcn/com/chinatelecom/account/api/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/chinatelecom/account/api/c/e;

.field private synthetic b:Lcn/com/chinatelecom/account/api/c/f;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/f;Lcn/com/chinatelecom/account/api/c/e;)V
    .registers 3

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/g;->b:Lcn/com/chinatelecom/account/api/c/f;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/c/g;->a:Lcn/com/chinatelecom/account/api/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/g;->b:Lcn/com/chinatelecom/account/api/c/f;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/f;->a(Lcn/com/chinatelecom/account/api/c/f;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/g;->a:Lcn/com/chinatelecom/account/api/c/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/g;->b:Lcn/com/chinatelecom/account/api/c/f;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/f;->b(Lcn/com/chinatelecom/account/api/c/f;)V

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/g;->a:Lcn/com/chinatelecom/account/api/c/e;

    invoke-interface {v0}, Lcn/com/chinatelecom/account/api/c/e;->a()V

    :cond_16
    return-void
.end method
