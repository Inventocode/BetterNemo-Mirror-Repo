.class Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState$1;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;
    .registers 4

    .line 1209
    new-instance v0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcel;Lcom/codemao/nemo/view/CarouselLayoutManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1206
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;
    .registers 2

    .line 1214
    new-array p1, p1, [Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1206
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState$1;->newArray(I)[Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    move-result-object p1

    return-object p1
.end method
