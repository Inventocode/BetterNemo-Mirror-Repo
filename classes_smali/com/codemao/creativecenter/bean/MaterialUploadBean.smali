.class public Lcom/codemao/creativecenter/bean/MaterialUploadBean;
.super Ljava/lang/Object;
.source "MaterialUploadBean.java"


# instance fields
.field public audioName:Ljava/lang/String;

.field public audioSize:Ljava/lang/Long;

.field public audioUri:Landroid/net/Uri;

.field public extName:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioUri:Landroid/net/Uri;

    .line 17
    iput-object p2, p0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->extName:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioSize:Ljava/lang/Long;

    .line 19
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->uuid:Ljava/lang/String;

    return-void
.end method
