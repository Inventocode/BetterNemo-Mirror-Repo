.class public Lcom/ljwx/baseview/FlowRadioGroup$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FlowRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseview/FlowRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ljwx/baseview/FlowRadioGroup$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 178
    new-instance v0, Lcom/ljwx/baseview/FlowRadioGroup$SavedState$1;

    invoke-direct {v0}, Lcom/ljwx/baseview/FlowRadioGroup$SavedState$1;-><init>()V

    sput-object v0, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 198
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;->checkIndex:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ljwx/baseview/FlowRadioGroup$1;)V
    .registers 3

    .line 176
    invoke-direct {p0, p1}, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .registers 3

    .line 193
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 194
    iput p2, p0, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;->checkIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/ljwx/baseview/FlowRadioGroup$SavedState;)I
    .registers 1

    .line 176
    iget p0, p0, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;->checkIndex:I

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 204
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 205
    iget p2, p0, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;->checkIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
