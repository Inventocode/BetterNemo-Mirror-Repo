.class public Lcn/codemao/android/account/util/OnActResultDispatcherFragment;
.super Landroidx/fragment/app/Fragment;
.source "OnActResultDispatcherFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "on_act_result_event_dispatcher"


# instance fields
.field private mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/account/util/ActResultRequest$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, 0x11

    .line 19
    iput v0, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mRequestCode:I

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/util/ActResultRequest$Callback;

    .line 41
    iget-object v1, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_15

    .line 44
    invoke-interface {v0, p2, p3}, Lcn/codemao/android/account/util/ActResultRequest$Callback;->onActivityResult(ILandroid/content/Intent;)V

    :cond_15
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public startForResult(Landroid/content/Intent;Lcn/codemao/android/account/util/ActResultRequest$Callback;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    iget v1, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mRequestCode:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget p2, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mRequestCode:I

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    iget p1, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mRequestCode:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->mRequestCode:I

    return-void
.end method
