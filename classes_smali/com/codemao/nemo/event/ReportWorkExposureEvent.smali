.class public Lcom/codemao/nemo/event/ReportWorkExposureEvent;
.super Ljava/lang/Object;
.source "ReportWorkExposureEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/nemo/event/ReportWorkExposureEvent;->pageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/event/ReportWorkExposureEvent;->pageName:Ljava/lang/String;

    return-object v0
.end method
