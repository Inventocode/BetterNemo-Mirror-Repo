.class final Lcn/com/chinatelecom/account/api/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/chinatelecom/account/api/c/i;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/i;)V
    .registers 2

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/k;->a:Lcn/com/chinatelecom/account/api/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/k;->a:Lcn/com/chinatelecom/account/api/c/i;

    iget-object v0, v0, Lcn/com/chinatelecom/account/api/c/i;->a:Lcn/com/chinatelecom/account/api/c/e;

    invoke-interface {v0}, Lcn/com/chinatelecom/account/api/c/e;->a()V

    return-void
.end method
