.class Lcom/codemao/creativecenter/CreativeCenterUtils$3;
.super Ljava/lang/Object;
.source "CreativeCenterUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/CreativeStoreUtils$EventLogCallBack;


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

    .line 225
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils$3;->this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils$3;->this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
