.class Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;
.super Ljava/lang/Object;
.source "StayDurationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->didExposure(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

.field final synthetic val$exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

.field final synthetic val$mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V
    .registers 4

    .line 117
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;->didExposure(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V

    return-void
.end method
