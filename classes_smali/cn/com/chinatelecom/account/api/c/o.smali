.class final Lcn/com/chinatelecom/account/api/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcn/com/chinatelecom/account/api/c/n;


# direct methods
.method public constructor <init>(Lcn/com/chinatelecom/account/api/c/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/o;->a:Lcn/com/chinatelecom/account/api/c/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/o;->a:Lcn/com/chinatelecom/account/api/c/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcn/com/chinatelecom/account/api/c/n;->b()V

    :cond_7
    return-void
.end method
