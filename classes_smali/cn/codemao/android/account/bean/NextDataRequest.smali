.class public Lcn/codemao/android/account/bean/NextDataRequest;
.super Ljava/lang/Object;
.source "NextDataRequest.java"


# instance fields
.field private appid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appid"
    .end annotation
.end field

.field private rid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcn/codemao/android/account/bean/NextDataRequest;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcn/codemao/android/account/bean/NextDataRequest;->rid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcn/codemao/android/account/bean/NextDataRequest;->appid:Ljava/lang/String;

    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcn/codemao/android/account/bean/NextDataRequest;->rid:Ljava/lang/String;

    return-void
.end method
