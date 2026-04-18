.class public Lcom/codemao/nemo/bean/CloudData;
.super Lcom/codemao/nemo/bean/BaseData;
.source "CloudData.java"


# instance fields
.field public bcm_version:Ljava/lang/String;

.field public downloadStatus:I

.field public name:Ljava/lang/String;

.field public preview:Ljava/lang/String;

.field public publish_time:J

.field public template_id:I

.field public template_type:I

.field public update_time:Ljava/lang/String;

.field public work_id:J

.field public work_type:I

.field public work_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseData;-><init>()V

    return-void
.end method
