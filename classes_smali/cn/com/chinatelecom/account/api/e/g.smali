.class final Lcn/com/chinatelecom/account/api/e/g;
.super Ljava/util/TimerTask;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/f;->a(Landroid/content/Context;)V

    return-void
.end method
