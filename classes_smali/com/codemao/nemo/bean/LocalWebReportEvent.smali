.class public Lcom/codemao/nemo/bean/LocalWebReportEvent;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "LocalWebReportEvent.java"


# static fields
.field public static final TYPE_CUSTOM:I = 0x2

.field public static final TYPE_PAGE:I = 0x1


# instance fields
.field private extra_msg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private report_msg:Ljava/lang/String;

.field private report_type:I


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/bean/LocalWebReportEvent;->report_type:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalWebReportEvent;->report_msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtra_msg()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalWebReportEvent;->extra_msg:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReport_msg()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalWebReportEvent;->report_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getReport_type()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/codemao/nemo/bean/LocalWebReportEvent;->report_type:I

    return v0
.end method

.method public setExtra_msg(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalWebReportEvent;->extra_msg:Ljava/util/HashMap;

    return-void
.end method

.method public setReport_msg(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalWebReportEvent;->report_msg:Ljava/lang/String;

    return-void
.end method

.method public setReport_type(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/codemao/nemo/bean/LocalWebReportEvent;->report_type:I

    return-void
.end method
