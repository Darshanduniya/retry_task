item_test = CustomSparkSubmitOperator(
    task_id="item_test",
    spark_size="small",
    run_parallel=False,
    python_script="./dim/dim_item_transformation.py",
    script_arguments=[
        "{{dag_run.conf['industry']}}",
        "{{dag_run.conf['stack']}}",
        "{{dag_run.conf['schema']}}"
    ],
    dag=dag,
)
