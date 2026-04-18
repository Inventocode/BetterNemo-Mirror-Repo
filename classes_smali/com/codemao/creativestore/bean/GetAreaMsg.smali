.class public Lcom/codemao/creativestore/bean/GetAreaMsg;
.super Ljava/lang/Object;
.source "GetAreaMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_BLUE_CONNECTION_BUTTON:Ljava/lang/String; = "ble-connection-button"

.field public static final TYPE_WORK_SPACE:Ljava/lang/String; = "workspace"


# instance fields
.field private area_type:Ljava/lang/String;

.field private coordinate:Lcom/codemao/creativestore/bean/AreaInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea_type()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/creativestore/bean/GetAreaMsg;->area_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordinate()Lcom/codemao/creativestore/bean/AreaInfo;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativestore/bean/GetAreaMsg;->coordinate:Lcom/codemao/creativestore/bean/AreaInfo;

    return-object v0
.end method

.method public setArea_type(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/creativestore/bean/GetAreaMsg;->area_type:Ljava/lang/String;

    return-void
.end method

.method public setCoordinate(Lcom/codemao/creativestore/bean/AreaInfo;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/creativestore/bean/GetAreaMsg;->coordinate:Lcom/codemao/creativestore/bean/AreaInfo;

    return-void
.end method
