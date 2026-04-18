.class public final enum Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;
.super Ljava/lang/Enum;
.source "SensorsDataContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

.field public static final enum DISABLE_SDK:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

.field public static final enum ENABLE_SDK:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

.field public static final enum LOGIN:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

.field public static final enum LOGOUT:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;


# instance fields
.field public isDid:Z

.field public isObserverCalled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 97
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    const-string v1, "LOGOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->LOGOUT:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    .line 98
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    const-string v3, "LOGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->LOGIN:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    .line 99
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    const-string v5, "ENABLE_SDK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2, v2}, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->ENABLE_SDK:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    .line 100
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    const-string v7, "DISABLE_SDK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2, v2}, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->DISABLE_SDK:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 96
    sput-object v7, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-boolean p3, p0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->isDid:Z

    .line 107
    iput-boolean p4, p0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->isObserverCalled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;
    .registers 2

    .line 96
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    return-object p0
.end method

.method public static values()[Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;
    .registers 1

    .line 96
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    invoke-virtual {v0}, [Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    return-object v0
.end method
