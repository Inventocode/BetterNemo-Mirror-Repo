.class Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "BannerLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/BannerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isReverseLayout:Z

.field offset:F

.field position:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 953
    new-instance v0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->position:I

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->offset:F

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->isReverseLayout:Z

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;)V
    .registers 3

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    iget v0, p1, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->position:I

    iput v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->position:I

    .line 937
    iget v0, p1, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->offset:F

    iput v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->offset:F

    .line 938
    iget-boolean p1, p1, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->isReverseLayout:Z

    iput-boolean p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->isReverseLayout:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 948
    iget p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    iget p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->offset:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 950
    iget-boolean p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->isReverseLayout:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
