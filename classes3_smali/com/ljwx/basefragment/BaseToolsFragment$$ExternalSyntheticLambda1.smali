.class public final synthetic Lcom/ljwx/basefragment/BaseToolsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/ljwx/basefragment/BaseToolsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ljwx/basefragment/BaseToolsFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ljwx/basefragment/BaseToolsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/ljwx/basefragment/BaseToolsFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/ljwx/basefragment/BaseToolsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/ljwx/basefragment/BaseToolsFragment;

    check-cast p1, Lcom/ljwx/baseapp/infochange/IBaseUserInfo;

    invoke-static {v0, p1}, Lcom/ljwx/basefragment/BaseToolsFragment;->$r8$lambda$QrcLtE-0hFuOL2LbAZSPwHd-OU4(Lcom/ljwx/basefragment/BaseToolsFragment;Lcom/ljwx/baseapp/infochange/IBaseUserInfo;)V

    return-void
.end method
