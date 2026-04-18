.class public final synthetic Lcom/ljwx/baseactivity/BaseToolsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/ljwx/baseactivity/BaseToolsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ljwx/baseactivity/BaseToolsActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseToolsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/ljwx/baseactivity/BaseToolsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseToolsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/ljwx/baseactivity/BaseToolsActivity;

    check-cast p1, Lcom/ljwx/baseapp/infochange/IBaseUserInfo;

    invoke-static {v0, p1}, Lcom/ljwx/baseactivity/BaseToolsActivity;->$r8$lambda$rofigimF0tHUEt7R3_W2lg4WHt8(Lcom/ljwx/baseactivity/BaseToolsActivity;Lcom/ljwx/baseapp/infochange/IBaseUserInfo;)V

    return-void
.end method
