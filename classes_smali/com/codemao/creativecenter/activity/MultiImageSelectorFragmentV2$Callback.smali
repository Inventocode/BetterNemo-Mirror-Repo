.class public interface abstract Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCameraShot(Ljava/io/File;)V
.end method

.method public abstract onFolderSelect(Ljava/lang/String;)V
.end method

.method public abstract onImageSelected(Ljava/lang/String;)V
.end method

.method public abstract onImageSelectedChange(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onImageUnselected(Ljava/lang/String;)V
.end method

.method public abstract onToEdit(Ljava/lang/String;)V
.end method

.method public abstract showCarmera()V
.end method
