.class public Lcn/codemao/android/account/bean/BindDeviceRemoveDTO;
.super Ljava/lang/Object;
.source "BindDeviceRemoveDTO.java"


# instance fields
.field private deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceRemoveDTO;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindDeviceRemoveDTO;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceRemoveDTO;->deviceId:Ljava/lang/String;

    return-void
.end method
