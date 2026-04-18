.class Lcom/ljwx/baseview/FlowRadioGroup$SavedState$1;
.super Ljava/lang/Object;
.source "FlowRadioGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseview/FlowRadioGroup$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ljwx/baseview/FlowRadioGroup$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ljwx/baseview/FlowRadioGroup$SavedState;
    .registers 4

    .line 182
    new-instance v0, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;-><init>(Landroid/os/Parcel;Lcom/ljwx/baseview/FlowRadioGroup$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 178
    invoke-virtual {p0, p1}, Lcom/ljwx/baseview/FlowRadioGroup$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ljwx/baseview/FlowRadioGroup$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ljwx/baseview/FlowRadioGroup$SavedState;
    .registers 2

    .line 187
    new-array p1, p1, [Lcom/ljwx/baseview/FlowRadioGroup$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 178
    invoke-virtual {p0, p1}, Lcom/ljwx/baseview/FlowRadioGroup$SavedState$1;->newArray(I)[Lcom/ljwx/baseview/FlowRadioGroup$SavedState;

    move-result-object p1

    return-object p1
.end method
