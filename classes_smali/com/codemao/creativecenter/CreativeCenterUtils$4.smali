.class Lcom/codemao/creativecenter/CreativeCenterUtils$4;
.super Ljava/lang/Object;
.source "CreativeCenterUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/CreativeCenterUtils;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;)Lcom/codemao/creativecenter/CreativeCenterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils$4;->this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils$4;->this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils$4;->this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
