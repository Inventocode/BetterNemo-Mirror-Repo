.class abstract Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;
.super Ljava/lang/Object;
.source "VisualDebugHelper.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TrackEventAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;)V
    .registers 2

    .line 186
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public identify()V
    .registers 1

    return-void
.end method

.method public login()V
    .registers 1

    return-void
.end method

.method public logout()V
    .registers 1

    return-void
.end method

.method public resetAnonymousId()V
    .registers 1

    return-void
.end method
