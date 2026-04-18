.class public Lcn/codemao/android/account/bean/ProtocolsListResult$ProtocolsItemInfo;
.super Ljava/lang/Object;
.source "ProtocolsListResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/bean/ProtocolsListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolsItemInfo"
.end annotation


# instance fields
.field public id:I

.field public protocolAddress:Ljava/lang/String;

.field public protocolCode:Ljava/lang/String;

.field public protocolName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
