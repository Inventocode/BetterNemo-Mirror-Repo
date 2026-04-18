.class Lcom/codemao/creativecenter/activity/MaterialActivity$13;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "MaterialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->getThemeVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 2

    .line 1849
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$13;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onSuccess(Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 1854
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$13;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;->getMaterial_version()I

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$2102(Lcom/codemao/creativecenter/activity/MaterialActivity;I)I

    .line 1855
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$13;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$2200(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    :cond_10
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1849
    check-cast p1, Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$13;->onSuccess(Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;)V

    return-void
.end method
