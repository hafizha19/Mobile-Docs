package com.example.p06_084_recycler_view;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.os.Bundle;
import java.util.ArrayList;
import adapter.MahasiswaAdapter;

public class MainActivity extends AppCompatActivity {

    private RecyclerView recyclerView;
    private MahasiswaAdapter adapter;
    private ArrayList<Mahasiswa> mahasiswaArrayList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        addData();

        recyclerView = (RecyclerView) findViewById(R.id.recycler_view);

        adapter = new MahasiswaAdapter(mahasiswaArrayList);

        RecyclerView.LayoutManager layoutManager = new LinearLayoutManager(MainActivity.this);

        recyclerView.setLayoutManager(layoutManager);

        recyclerView.setAdapter(adapter);
    }

    void addData(){
        mahasiswaArrayList = new ArrayList<>();
        mahasiswaArrayList.add(new Mahasiswa("Hafizhatul Kiromi MZ", "15612345", "123456789"));
        mahasiswaArrayList.add(new Mahasiswa("Yessy Fatmasari", "18612345", "987654321"));
        mahasiswaArrayList.add(new Mahasiswa("Hida Muhimmatul Husna", "17612345", "987648765"));
        mahasiswaArrayList.add(new Mahasiswa("Deuis Dinda Wildan", "19512345", "098758124"));

    }

}